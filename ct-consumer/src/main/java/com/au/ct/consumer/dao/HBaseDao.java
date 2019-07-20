package com.au.ct.consumer.dao;

import com.au.ct.common.bean.BaseDao;
import com.au.ct.common.constant.Names;
import com.au.ct.common.constant.ValueConstant;
import com.au.ct.consumer.bean.CallLog;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.util.Bytes;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName HBaseDao
 * TODO
 * @Author Au
 * @Date 2019/7/18 16:24
 * @Description
 **/
public class HBaseDao extends BaseDao {

    /**
     * 初始化
     */
    public void init() throws Exception {
        start();

        createNamespaceNX(Names.NAMESPACE.getValue());
        createTableXX(Names.TABLE.getValue(), "com.au.ct.consumer.coprocessor.InsertCalleeCoprocessor", ValueConstant.REGION_COUNT, Names.CF_CALLER.getValue(), Names.CF_CALLEE.getValue());

        end();
    }

    /**
     * 插入数据
     *
     * @param log
     * @throws Exception
     */
    public void insertData(CallLog log) throws Exception {
        log.setRowKey(genRegionNum(log.getCall1(), log.getCallTime()) + "_" + log.getCall1() + "_" + log.getCallTime() + "_" + log.getCall2() + "_" + log.getDuration());
        putData(log);
    }

    /**
     * 插入数据
     */
    public void insertData(String value) throws Exception {
        // 将通话日志保存到hbase表中

        // 1.获取通话日志数据
        String[] values = value.split("\t");
        String call1 = values[0];
        String call2 = values[1];
        String callTime = values[2];
        String duration = values[3];

        // 2.创建数据对象
        // rowKey设计
        // 1) 长度原则
        //        最大长度64KB，推荐长度为10~100byte
        //        最好是8的倍数，能短则短，rowkey如果太长会影响性能
        // 2) 唯一原则
        //        rowkey应该具备唯一性
        // 3) 散列原则
        //      3-1) 盐值散列：不能使用时间戳直接作为rowkey
        //                      在rowkey前增加随机数
        //      3-2) 字符串反转：电话号码，时间戳
        //      3-3) 计算分区号：hashMap

        // rowkey = regionNum + call1 + time + call2 + duration
        String rowKey = genRegionNum(call1, callTime) + "_" + call1 + "_" + callTime + "_" + call2 + "_" + duration + "_1";
        Put put = new Put(Bytes.toBytes(rowKey));
        byte[] family = Bytes.toBytes(Names.CF_CALLER.getValue());
        put.addColumn(family, Bytes.toBytes("call1"), Bytes.toBytes(call1));
        put.addColumn(family, Bytes.toBytes("call2"), Bytes.toBytes(call2));
        put.addColumn(family, Bytes.toBytes("callTime"), Bytes.toBytes(callTime));
        put.addColumn(family, Bytes.toBytes("duration"), Bytes.toBytes(duration));
        put.addColumn(family, Bytes.toBytes("flag"), Bytes.toBytes("1"));

//        String calleeRowKey = genRegionNum(call2, callTime) + "_" + call2 + "_" + callTime + "_" + call1 + "_" + duration + "_0";
//        Put calleePut = new Put(Bytes.toBytes(calleeRowKey));
//        byte[] calleeFamily = Bytes.toBytes(Names.CF_CALLEE.getValue());
//        calleePut.addColumn(calleeFamily, Bytes.toBytes("call1"), Bytes.toBytes(call2));
//        calleePut.addColumn(calleeFamily, Bytes.toBytes("call2"), Bytes.toBytes(call1));
//        calleePut.addColumn(calleeFamily, Bytes.toBytes("callTime"), Bytes.toBytes(callTime));
//        calleePut.addColumn(calleeFamily, Bytes.toBytes("duration"), Bytes.toBytes(duration));
//        calleePut.addColumn(calleeFamily, Bytes.toBytes("flag"), Bytes.toBytes("0"));

        // 3.保存数据
        List<Put> puts = new ArrayList<>();
        puts.add(put);
//        puts.add(calleePut);

        putData(Names.TABLE.getValue(), puts);
    }
}
