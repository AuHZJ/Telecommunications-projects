package com.au.ct.producer.bean;

import com.au.ct.common.bean.Data;

/**
 * @ClassName Contact
 * TODO
 * @Author Au
 * @Date 2019/7/18 14:35
 * @Description 联系人
 **/
public class Contact extends Data {
    private String tel;
    private String name;

    public Contact() {
    }

    public Contact(String tel, String name) {
        this.tel = tel;
        this.name = name;
    }

    @Override
    public void setValue(Object val) {
        String value = (String) val;
        String[] values = value.split("\t");
        tel = values[0];
        name = values[1];
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Contact[" + tel + "\t" + name + "]";
    }
}
