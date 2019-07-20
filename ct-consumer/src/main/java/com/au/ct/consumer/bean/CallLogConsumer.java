package com.au.ct.consumer.bean;

import com.au.ct.common.bean.BaseDao;
import com.au.ct.common.bean.Consumer;
import com.au.ct.common.constant.Names;
import com.au.ct.consumer.dao.HBaseDao;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;

import java.io.IOException;
import java.util.Arrays;
import java.util.Properties;

/**
 * @ClassName CallLogConsumer
 * TODO
 * @Author Au
 * @Date 2019/7/18 16:05
 * @Description 通话日志消费者对象
 **/
public class CallLogConsumer implements Consumer {
    /**
     * 消费数据
     */
    @Override
    public void consume() {
        try {
            // 创建配置对象
            Properties prop = new Properties();
            // 加载配置文件
            prop.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("consumer.properties"));
            // 获取Flume采集的数据
            KafkaConsumer<String, String> consumer = new KafkaConsumer<>(prop);
            // 关注主题
            consumer.subscribe(Arrays.asList(Names.TOPIC.getValue()));

            // HBase数据访问对象
            HBaseDao dao = new HBaseDao();
            // 初始化
            dao.init();

            // 消费数据
            while (true) {
                ConsumerRecords<String, String> poll = consumer.poll(100);
                for (ConsumerRecord<String, String> consumerRecord : poll) {
                    System.out.println(consumerRecord.value());
                    // 插入数据
                    dao.insertData(consumerRecord.value());
//                    CallLog log = new CallLog(consumerRecord.value());
//                    dao.insertData(log);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 关闭资源
     *
     * @throws IOException
     */
    @Override
    public void close() throws IOException {

    }
}
