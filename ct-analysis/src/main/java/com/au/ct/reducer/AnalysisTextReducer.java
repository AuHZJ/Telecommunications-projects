package com.au.ct.reducer;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

/**
 * @ClassName AnalysisTextReducer
 * @Author Au
 * @Date 2019/7/19 16:49
 * @Description
 **/
public class AnalysisTextReducer extends Reducer<Text, Text, Text, Text> {
    @Override
    protected void reduce(Text key, Iterable<Text> values, Context context) throws IOException, InterruptedException {
        int sumCall = 0;
        int sumDuration = 0;
        for (Text value : values) {
            sumCall++;
            sumDuration += Integer.parseInt(value.toString());
        }
        context.write(key, new Text(sumCall + "_" + sumDuration));
    }
}
