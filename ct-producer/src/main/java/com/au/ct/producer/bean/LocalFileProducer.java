package com.au.ct.producer.bean;

import com.au.ct.common.bean.DataIn;
import com.au.ct.common.bean.DataOut;
import com.au.ct.common.bean.Producer;
import com.au.ct.common.util.DateUtil;
import com.au.ct.common.util.NumberUtil;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * @ClassName LocalFileProducer
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:26
 * @Description 本地文件生产者，负责生产通话数据
 **/
public class LocalFileProducer implements Producer {

    private DataIn in;
    private DataOut out;

    private volatile boolean flag = true;

    @Override
    public void setDataIn(DataIn in) {
        this.in = in;
    }

    @Override
    public void setDataOut(DataOut out) {
        this.out = out;
    }

    /**
     * 生产数据
     */
    @Override
    public void produce() {
        try {
            //  读取通讯录数据
            List<Contact> contacts = in.read(Contact.class);
            while (flag) {
                // 随机取两个联系人
                int index1 = new Random().nextInt(contacts.size());
                int index2;
                String call1 = contacts.get(index1).getTel();
                String call2;
                while (true) {
                    index2 = new Random().nextInt(contacts.size());
                    call2 = contacts.get(index2).getTel();
                    if (!call1.equals(call2)) {
                        break;
                    }
                }
                // 随机生成通话时间 20190101000000 ~ 20200101000000
                String startDate = "20190101000000";
                String endDate = "20200101000000";
                long startTime = DateUtil.parse(startDate, "yyyyMMddHHmmss").getTime();
                long endTime = DateUtil.parse(endDate, "yyyyMMddHHmmss").getTime();
                long callTime_long = (long) (startTime + (endTime - startTime) * Math.random());
                String callTime_string = DateUtil.format(new Date(callTime_long), "yyyyMMddHHmmss");
                // 随机生成通话时长
                String duration = NumberUtil.format(new Random().nextInt(3000), 4);
                // 生成通话记录
                CallLog callLog = new CallLog(call1, call2, callTime_string, duration);
                System.out.println("生成数据：" + callLog);
                // 写入文件
                out.write(callLog);
                Thread.sleep(500);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 关闭资源
     */
    @Override
    public void close() throws IOException {
        if (in != null) {
            in.close();
        }
        if (out != null) {
            out.close();
        }
    }
}
