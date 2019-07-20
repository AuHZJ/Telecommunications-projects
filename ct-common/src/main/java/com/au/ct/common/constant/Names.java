package com.au.ct.common.constant;

import com.au.ct.common.bean.Val;

/**
 * @ClassName Names
 * TODO
 * @Author Au
 * @Date 2019/7/18 16:11
 * @Description 名称常量枚举类
 **/
public enum Names implements Val {
    TOPIC("ct"),
    NAMESPACE("ct"),
    TABLE("ct:calllog"),
    CF_CALLER("caller"),
    CF_CALLEE("callee"),
    CF_INFO("info"),
    HBASE_ZOOKEEPER_QUORUM("hadoopPD:2181");
    private String name;

    Names(String name) {
        this.name = name;
    }

    @Override
    public void setValue(Object val) {
        this.name = (String) val;
    }

    @Override
    public String getValue() {
        return name;
    }
}
