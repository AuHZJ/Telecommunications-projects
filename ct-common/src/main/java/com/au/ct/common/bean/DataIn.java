package com.au.ct.common.bean;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;

/**
 * @ClassName DataIn
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:23
 * @Description 输入数据接口
 **/
public interface DataIn extends Closeable {
    public void setPath(String path);

    public Object read() throws IOException;

    public <T extends Data> List<T> read(Class<T> clazz) throws IOException;
}