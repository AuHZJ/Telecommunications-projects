package com.au.ct.producer.io;

import com.au.ct.common.bean.DataOut;

import java.io.*;

/**
 * @ClassName LocalFileDataOut
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:42
 * @Description
 **/
public class LocalFileDataOut implements DataOut {

    private PrintWriter writer = null;

    public LocalFileDataOut() {
    }

    public LocalFileDataOut(String path) {
        setPath(path);
    }

    @Override
    public void setPath(String path) {
        try {
            writer = new PrintWriter(new OutputStreamWriter(new FileOutputStream(path), "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    /**
     * 将obj对象生成到文件中
     *
     * @param obj
     * @throws Exception
     */
    @Override
    public void write(Object obj) throws IOException {
        write(obj.toString());
    }

    /**
     * 将数据字符串生成到文件中
     *
     * @param data
     * @throws Exception
     */
    @Override
    public void write(String data) throws IOException {
        writer.println(data);
        writer.flush();
    }

    /**
     * 关闭资源
     *
     * @throws IOException
     */
    @Override
    public void close() throws IOException {
        if (writer != null) {
            writer.close();
        }
    }


}
