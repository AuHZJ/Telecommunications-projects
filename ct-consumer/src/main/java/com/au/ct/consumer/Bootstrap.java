package com.au.ct.consumer;

import com.au.ct.consumer.bean.CallLogConsumer;

import java.io.IOException;

/**
 * @ClassName Bootstrap
 * TODO
 * @Author Au
 * @Date 2019/7/18 16:02
 * @Description 启动消费者
 * 使用Kafka消费者获取Flume采集的数据
 * 将数据存储到Hbase中去
 **/
public class Bootstrap {
    public static void main(String[] args) throws IOException {
        // 创建消费者
        CallLogConsumer consumer = new CallLogConsumer();
        // 消费数据
        consumer.consume();
        // 关闭资源
        consumer.close();
    }
}
