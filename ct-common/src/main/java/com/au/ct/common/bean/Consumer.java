package com.au.ct.common.bean;

import java.io.Closeable;

/**
 * @ClassName Consumer
 * TODO
 * @Author Au
 * @Date 2019/7/18 16:04
 * @Description 消费者接口
 **/
public interface Consumer extends Closeable {
    /**
     * 消费数据
     */
    public void consume();
}
