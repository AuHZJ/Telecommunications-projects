package com.au.ct.io;

import com.au.ct.common.util.JDBCUtil;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.*;
import org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;


/**
 * @ClassName MySQLTextOutputFormat
 * @Author Au
 * @Date 2019/7/19 16:51
 * @Description
 **/
public class MySQLTextOutputFormat extends OutputFormat<Text, Text> {

    protected static class MySQLRecordWriter extends RecordWriter<Text, Text> {
        private Connection conn = null;

        private Map<String, Integer> contactsMap = new HashMap<>();

        private Map<String, Integer> dateMap = new HashMap<>();

        public MySQLRecordWriter() {
            // 获取资源
            conn = JDBCUtil.getConnection();
            String sql = "select id,telephone from tb_contacts";
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
                ps = conn.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    contactsMap.put(rs.getString(2), rs.getInt(1));
//                    System.out.println(rs.getString(2) + ":" + rs.getInt(1));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            sql = "select * from tb_dimension_date";
            try {
                ps = conn.prepareStatement(sql);
                rs = ps.executeQuery(sql);
                while (rs.next()) {
                    String year = rs.getInt(2) + "";
                    String month = rs.getInt(3) == -1 ? "" : rs.getInt(3) + "";
                    String day = rs.getInt(4) == -1 ? "" : rs.getInt(4) + "";
                    if (month.length() == 1) {
                        month = "0" + month;
                    }
                    if (day.length() == 1) {
                        day = "0" + day;
                    }
                    dateMap.put(year + month + day, rs.getInt(1));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        /**
         * 输出数据
         *
         * @param key
         * @param value
         * @throws IOException
         * @throws InterruptedException
         */
        @Override
        public void write(Text key, Text value) throws IOException, InterruptedException {
            String[] tel_date = key.toString().split("_");
            String tel = tel_date[0];
            String date = tel_date[1];
            String[] values = value.toString().split("_");
            String sumCall = values[0];
            String sumDuration = values[1];
            PreparedStatement ps = null;
            try {
                String sql = "insert into ct_call (telid,dateid,sumcall,sumduration) values(?,?,?,?)";
                ps = conn.prepareStatement(sql);
//                System.out.println("contacts:" + tel);
//                System.out.println("date:" + date);
                ps.setInt(1, contactsMap.get(tel));
                ps.setInt(2, dateMap.get(date));
                ps.setInt(3, Integer.parseInt(sumCall));
                ps.setInt(4, Integer.parseInt(sumDuration));
                ps.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (ps != null) {
                    try {
                        ps.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /**
         * 释放资源
         *
         * @param taskAttemptContext
         * @throws IOException
         * @throws InterruptedException
         */
        @Override
        public void close(TaskAttemptContext taskAttemptContext) throws IOException, InterruptedException {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public RecordWriter<Text, Text> getRecordWriter(TaskAttemptContext taskAttemptContext) throws IOException, InterruptedException {
        return new MySQLRecordWriter();
    }

    @Override
    public void checkOutputSpecs(JobContext jobContext) throws IOException, InterruptedException {

    }

    private FileOutputCommitter committer = null;

    public static Path getOutputPath(JobContext job) {
        String name = job.getConfiguration().get("mapreduce.output.fileoutputformat.outputdir");
        return name == null ? null : new Path(name);
    }

    @Override
    public OutputCommitter getOutputCommitter(TaskAttemptContext taskAttemptContext) throws IOException, InterruptedException {
        if (this.committer == null) {
            Path output = getOutputPath(taskAttemptContext);
            this.committer = new FileOutputCommitter(output, taskAttemptContext);
        }

        return this.committer;
    }
}
