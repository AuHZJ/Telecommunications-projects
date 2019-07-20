package com.au.ct.common.bean;

import java.io.Closeable;
import java.io.IOException;

/**
 * @ClassName DataOut
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:23
 * @Description 输出数据接口
 **/
public interface DataOut extends Closeable {
    public void setPath(String path);

    public void write(Object obj) throws IOException;

    public void write(String data) throws IOException;
}
