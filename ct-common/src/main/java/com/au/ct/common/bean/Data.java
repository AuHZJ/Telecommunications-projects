package com.au.ct.common.bean;

/**
 * @ClassName Data
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:17
 * @Description 数据抽象类
 **/
public abstract class Data implements Val {

    public String content;

    @Override
    public void setValue(Object val) {
        content = (String) val;
    }

    @Override
    public Object getValue() {
        return content;
    }
}
