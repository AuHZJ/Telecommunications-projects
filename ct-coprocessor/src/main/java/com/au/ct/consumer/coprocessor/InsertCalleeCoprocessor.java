package com.au.ct.consumer.coprocessor;

import com.au.ct.common.bean.BaseDao;
import com.au.ct.common.constant.Names;
import org.apache.hadoop.hbase.CoprocessorEnvironment;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.Durability;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.client.Table;
import org.apache.hadoop.hbase.coprocessor.ObserverContext;
import org.apache.hadoop.hbase.coprocessor.RegionCoprocessor;
import org.apache.hadoop.hbase.coprocessor.RegionCoprocessorEnvironment;
import org.apache.hadoop.hbase.coprocessor.RegionObserver;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.hbase.wal.WALEdit;

import java.io.IOException;
import java.util.Optional;

/**
 * @ClassName InsertCalleeCoprocessor
 * TODO
 * @Author Au
 * @Date 2019/7/19 15:08
 * @Description 使用协处理器保存被叫用户数据
 * 协处理器的使用：
 * 1. 创建类
 * 2. 让表知道协处理类（和表有关联）
 * 3. 打成jar包放到hbase（关联jar包也需要）
 **/
public class InsertCalleeCoprocessor implements RegionObserver, RegionCoprocessor {
    /**
     * 保存主叫用户数据之后，由hbase自动保存被叫用户数据
     *
     * @param c
     * @param put
     * @param edit
     * @param durability
     */
    @Override
    public void postPut(ObserverContext<RegionCoprocessorEnvironment> c, Put put, WALEdit edit, Durability durability) {
        try {
            // 获取表
            Table table = c.getEnvironment().getConnection().getTable(TableName.valueOf(Names.TABLE.getValue()));

            String rowKey = Bytes.toString(put.getRow());
            String[] values = rowKey.split("_");

            coprocessorDao dao = new coprocessorDao();

            String call1 = values[1];
            String call2 = values[3];
            String callTime = values[2];
            String duration = values[4];
            String flag = values[5];

            // 只有主叫用户保存数据之后才保存被叫用户数据，否则会进入死循环
            if (flag.equals("1")) {
                String calleeRowKey = dao.getRegionNum(call2, callTime) + "_" + call2 + "_" + callTime + "_" + call1 + "_" + duration + "_0";
                Put calleePut = new Put(Bytes.toBytes(calleeRowKey));
                byte[] calleeFamily = Bytes.toBytes(Names.CF_CALLEE.getValue());
                calleePut.addColumn(calleeFamily, Bytes.toBytes("call1"), Bytes.toBytes(call2));
                calleePut.addColumn(calleeFamily, Bytes.toBytes("call2"), Bytes.toBytes(call1));
                calleePut.addColumn(calleeFamily, Bytes.toBytes("callTime"), Bytes.toBytes(callTime));
                calleePut.addColumn(calleeFamily, Bytes.toBytes("duration"), Bytes.toBytes(duration));
                calleePut.addColumn(calleeFamily, Bytes.toBytes("flag"), Bytes.toBytes("0"));

                // 保存数据
                table.put(calleePut);
                // 关闭资源
                table.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 加入该方法，否则无法生效
     */
    @Override
    public Optional<RegionObserver> getRegionObserver() {
        return Optional.of(this);
    }

    private static class coprocessorDao extends BaseDao {
        public int getRegionNum(String tel, String time) {
            return genRegionNum(tel, time);
        }
    }
}
