package com.au.ct.producer.bean;

import com.au.ct.common.bean.Data;

/**
 * @ClassName CallLog
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:34
 * @Description
 **/
public class CallLog extends Data {

    private String call1;
    private String call2;
    private String callTime;
    private String duration;

    public CallLog(String call1, String call2, String callTime, String duration) {
        this.call1 = call1;
        this.call2 = call2;
        this.callTime = callTime;
        this.duration = duration;
    }

    @Override
    public String toString() {
        return call1 + "\t" + call2 + "\t" + callTime + "\t" + duration;
    }
}
