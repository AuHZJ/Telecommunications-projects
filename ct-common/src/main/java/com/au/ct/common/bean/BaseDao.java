package com.au.ct.common.bean;

import com.au.ct.common.api.Column;
import com.au.ct.common.api.RowKey;
import com.au.ct.common.api.TableRef;
import com.au.ct.common.constant.Names;
import com.au.ct.common.constant.ValueConstant;
import com.au.ct.common.util.DateUtil;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.NamespaceDescriptor;
import org.apache.hadoop.hbase.NamespaceNotFoundException;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.*;
import org.apache.hadoop.hbase.util.Bytes;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @ClassName BaseDao
 * TODO
 * @Author Au
 * @Date 2019/7/18 16:23
 * @Description 基础数据访问对象
 **/
public abstract class BaseDao {

    private ThreadLocal<Connection> connHolder = new ThreadLocal<>();
    private ThreadLocal<Admin> adminHolder = new ThreadLocal<>();

    protected void start() throws IOException {
        getConnection();
        getAdmin();
    }

    protected void end() throws IOException {
        Admin admin = adminHolder.get();
        if (admin != null) {
            admin.close();
            adminHolder.remove();
        }

        Connection conn = connHolder.get();
        if (conn != null) {
            conn.close();
            connHolder.remove();
        }
    }

    /**
     * 获取连接对象
     */
    protected synchronized Connection getConnection() throws IOException {
        Connection conn = connHolder.get();
        if (conn == null) {
            Configuration conf = HBaseConfiguration.create();
            conf.set("hbase.zookeeper.quorum", Names.HBASE_ZOOKEEPER_QUORUM.getValue());
            conn = ConnectionFactory.createConnection(conf);
            System.out.println("成功连接zookeeper：" + conn);
            connHolder.set(conn);
        }
        return conn;
    }

    /**
     * 获取管理对象
     */
    protected synchronized Admin getAdmin() throws IOException {
        Admin admin = adminHolder.get();
        if (admin == null) {
            admin = getConnection().getAdmin();
            adminHolder.set(admin);
            System.out.println("成功获取hbase管理对象：" + admin);
        }
        return admin;
    }

    /**
     * 创建命名空间，如果命名空间已经存在，不需要创建，否则创建新的
     *
     * @param namespace
     */
    protected void createNamespaceNX(String namespace) throws IOException {
        Admin admin = getAdmin();
        try {
            admin.getNamespaceDescriptor(namespace);
        } catch (NamespaceNotFoundException e) {
            // 发生异常说明没有这个命名空间，则创建
            NamespaceDescriptor namespaceDescriptor = NamespaceDescriptor.create(namespace).build();
            admin.createNamespace(namespaceDescriptor);
            System.out.println("成功创建命名空间：" + namespace);
        }
    }

    /**
     * 创建表（默认分区），如果表已经存在，那么删除后创建新的
     *
     * @param name
     * @param familes
     */
    protected void createTableXX(String name, String... familes) throws Exception {
        createTableXX(name, null, null, familes);
    }

    /**
     * 创建表（自定义分区），如果表已经存在，那么删除后创建新的
     *
     * @param name
     * @param regionCount
     * @param familes
     * @throws Exception
     */
    protected void createTableXX(String name, String coprocessorClass, Integer regionCount, String... familes) throws Exception {
        Admin admin = getAdmin();
        TableName tableName = TableName.valueOf(name);
        if (admin.tableExists(tableName)) {
            // 删除表
            deleteTable(name);
        }
        // 创建表
        createTable(name, coprocessorClass, regionCount, familes);
    }

    /**
     * 纯粹的创建表
     *
     * @param name
     * @param regionCount
     * @param familes
     * @throws IOException
     */
    private void createTable(String name, String coprocessorClass, Integer regionCount, String... familes) throws IOException {
        if (familes == null || familes.length == 0) {
            familes = new String[1];
            familes[0] = Names.CF_INFO.getValue();
        }
        Admin admin = getAdmin();
        TableName tableName = TableName.valueOf(name);
        TableDescriptorBuilder tableDescriptorBuilder = TableDescriptorBuilder.newBuilder(tableName);
        for (String family : familes) {
            ColumnFamilyDescriptor familyDescriptor = ColumnFamilyDescriptorBuilder.newBuilder(Bytes.toBytes(family)).build();
            tableDescriptorBuilder.setColumnFamily(familyDescriptor);
        }
        if (coprocessorClass != null && !"".equals(coprocessorClass)) {
            tableDescriptorBuilder.addCoprocessor(coprocessorClass);
        }

        TableDescriptor tableDescriptor = tableDescriptorBuilder.build();
        // 增加预分区
        if (regionCount == null || regionCount <= 0) {
            admin.createTable(tableDescriptor);
        } else {
            // 分区键
            byte[][] splitKeys = genSplitKeys(regionCount);
            admin.createTable(tableDescriptor, splitKeys);
        }
        System.out.println("成功创建表：" + name);
    }

    /**
     * 生成分区键
     *
     * @param regionCount
     * @return
     */
    private byte[][] genSplitKeys(Integer regionCount) {
        int splitKeyCount = regionCount - 1;
        byte[][] bs = new byte[splitKeyCount][];
        List<byte[]> bsList = new ArrayList<>();
        for (int i = 0; i < splitKeyCount; ++i) {
            String splitKey = i + "|";
            bsList.add(Bytes.toBytes(splitKey));
        }
        bsList.toArray(bs);
        return bs;
    }

    /**
     * 计算分区号
     *
     * @param tel
     * @param date
     * @return
     */
    protected int genRegionNum(String tel, String date) {
        String usercode = tel.substring(tel.length() - 4);
        String yearMonth = date.substring(0, 6);
        int regionNum = (Math.abs(usercode.hashCode() ^ yearMonth.hashCode())) % ValueConstant.REGION_COUNT;
        return regionNum;
    }

    /**
     * 获取查询时startrow，stoprow集合
     *
     * @param tel
     * @param start
     * @param end
     * @return
     */
    protected List<String[]> getStartStopRowkeys(String tel, String start, String end) {
        List<String[]> rowkeyss = new ArrayList<>();

        String startTime = start.substring(0, 6);
        String endTime = end.substring(0, 6);

        Calendar startCal = Calendar.getInstance();
        startCal.setTime(DateUtil.parse(startTime, "yyyyMM"));

        Calendar endCal = Calendar.getInstance();
        startCal.setTime(DateUtil.parse(endTime, "yyyyMM"));

        while (startCal.getTimeInMillis() <= endCal.getTimeInMillis()) {

            String nowTime = DateUtil.format(startCal.getTime(), "yyyyMM");
            int regionNum = genRegionNum(tel, nowTime);
            String startRow = regionNum + "_" + tel + "_" + nowTime;
            String stopRow = startRow + "|";
            String[] rowkeys = {startRow, stopRow};
            rowkeyss.add(rowkeys);
            // 月份+1
            startCal.add(Calendar.MONTH, 1);
        }
        return rowkeyss;
    }

    /**
     * 删除表
     *
     * @param name
     * @throws Exception
     */

    protected void deleteTable(String name) throws Exception {
        Admin admin = getAdmin();
        TableName tableName = TableName.valueOf(name);
        admin.disableTable(tableName);
        admin.deleteTable(tableName);
        System.out.println("成功删除表：" + name);
    }

    /**
     * 增加对象：自动封装数据，将对象数据直接保存到hbase中
     *
     * @param obj
     * @throws Exception
     */
    protected void putData(Object obj) throws Exception {
        // 反射
        Class<?> clazz = obj.getClass();
        TableRef tableRef = clazz.getAnnotation(TableRef.class);
        String tableName = tableRef.value();
        // Table
        Connection conn = getConnection();
        Table table = conn.getTable(TableName.valueOf(tableName));

        String rowKey = null;
        Field[] fs = clazz.getDeclaredFields();
        for (Field f : fs) {
            RowKey rowKeyField = f.getAnnotation(RowKey.class);
            if (rowKeyField != null) {
                f.setAccessible(true);
                rowKey = (String) f.get(obj);
                break;
            }
        }
        // Put
        Put put = new Put(Bytes.toBytes(rowKey));

        for (Field f : fs) {
            Column columnField = f.getAnnotation(Column.class);
            if (columnField != null) {
                f.setAccessible(true);
                String family = columnField.family();
                String column = columnField.column();
                if (column == null || column.equals("")) {
                    column = f.getName();
                }
                String value = (String) f.get(obj);
                put.addColumn(Bytes.toBytes(family), Bytes.toBytes(column), Bytes.toBytes(value));
            }
        }
        // 增加数据
        table.put(put);
        // 关闭表
        table.close();
    }

    /**
     * 增加数据
     *
     * @param name
     * @param put
     */
    protected void putData(String name, Put put) throws Exception {
        // 获取表对象
        Connection conn = getConnection();
        Table table = conn.getTable(TableName.valueOf(name));
        // 增加数据
        table.put(put);
        // 关闭表
        table.close();
    }

    /**
     * 增加多条数据
     *
     * @param name
     * @param puts
     * @throws Exception
     */
    protected void putData(String name, List<Put> puts) throws Exception {
        // 获取表对象
        Connection conn = getConnection();
        Table table = conn.getTable(TableName.valueOf(name));
        // 增加数据
        table.put(puts);
        // 关闭表
        table.close();
    }
}
