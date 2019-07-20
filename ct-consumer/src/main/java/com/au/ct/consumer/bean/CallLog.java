package com.au.ct.consumer.bean;

import com.au.ct.common.api.Column;
import com.au.ct.common.api.RowKey;
import com.au.ct.common.api.TableRef;

/**
 * @ClassName CallLog
 * TODO
 * @Author Au
 * @Date 2019/7/19 10:45
 * @Description 通话日志
 **/
@TableRef("ct:calllog")
public class CallLog {
    @RowKey
    private String rowKey;
    @Column(family = "caller")
    private String call1;
    @Column(family = "caller")
    private String call2;
    @Column(family = "caller")
    private String callTime;
    @Column(family = "caller")
    private String duration;
    @Column(family = "caller")
    private String flag = "1";

    private String name;

    public CallLog() {
    }

    public CallLog(String data) {
        String[] values = data.split("\t");
        call1 = values[0];
        call2 = values[1];
        callTime = values[2];
        duration = values[3];
    }

    public String getRowKey() {
        return rowKey;
    }

    public void setRowKey(String rowKey) {
        this.rowKey = rowKey;
    }

    public String getCall1() {
        return call1;
    }

    public void setCall1(String call1) {
        this.call1 = call1;
    }

    public String getCall2() {
        return call2;
    }

    public void setCall2(String call2) {
        this.call2 = call2;
    }

    public String getCallTime() {
        return callTime;
    }

    public void setCallTime(String callTime) {
        this.callTime = callTime;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }
}
