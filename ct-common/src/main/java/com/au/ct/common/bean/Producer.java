package com.au.ct.common.bean;

import java.io.Closeable;

/**
 * @ClassName Producer
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:22
 * @Description 生产者接口
 **/
public interface Producer extends Closeable {
    public void setDataIn(DataIn in);

    public void setDataOut(DataOut out);

    public void produce();
}
