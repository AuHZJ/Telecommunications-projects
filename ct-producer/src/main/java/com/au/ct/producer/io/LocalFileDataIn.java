package com.au.ct.producer.io;

import com.au.ct.common.bean.Data;
import com.au.ct.common.bean.DataIn;

import javax.management.InstanceNotFoundException;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName LocalFileDataIn
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:39
 * @Description
 **/
public class LocalFileDataIn implements DataIn {
    private BufferedReader reader = null;

    public LocalFileDataIn() {
    }

    public LocalFileDataIn(String path) {
        setPath(path);
    }

    @Override
    public void setPath(String path) {
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(path), "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Object read() throws IOException {
        return null;
    }

    @Override
    public <T extends Data> List<T> read(Class<T> clazz) throws IOException {
        List<T> list = new ArrayList<>();
        String line;
        try {
            while ((line = reader.readLine()) != null) {
                T t = clazz.newInstance();
                t.setValue(line);
                list.add(t);
            }
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public void close() throws IOException {

    }
}
