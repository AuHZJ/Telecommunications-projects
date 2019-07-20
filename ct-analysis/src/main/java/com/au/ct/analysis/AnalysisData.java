package com.au.ct.analysis;

import com.au.ct.common.constant.Names;
import com.au.ct.io.MySQLTextOutputFormat;
import com.au.ct.mapper.AnalysisTextMapper;
import com.au.ct.reducer.AnalysisTextReducer;

import org.apache.hadoop.conf.Configured;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.JobStatus;
import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;

/**
 * @ClassName AnalysisData
 * @Author Au
 * @Date 2019/7/19 16:36
 * @Description 分析数据
 **/
public class AnalysisData extends Configured implements Tool {
    public static void main(String[] args) throws Exception {
        ToolRunner.run(new AnalysisData(), args);
    }

    @Override
    public int run(String[] strings) throws Exception {
        Job job = Job.getInstance();
        job.setJarByClass(AnalysisData.class);
        Scan scan = new Scan();
        scan.addFamily(Bytes.toBytes(Names.CF_CALLER.getValue()));

        // Mapper
        TableMapReduceUtil.initTableMapperJob(Names.TABLE.getValue(), scan, AnalysisTextMapper.class, Text.class, Text.class, job);

        // Reducer
        job.setReducerClass(AnalysisTextReducer.class);
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(Text.class);

        //outputformat
        job.setOutputFormatClass(MySQLTextOutputFormat.class);

        boolean flg = job.waitForCompletion(true);
        if (flg) {
            return JobStatus.State.SUCCEEDED.getValue();
        } else {
            return JobStatus.State.FAILED.getValue();
        }
    }

}
