package com.au.ct.common.constant;

import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

/**
 * @ClassName ConfigConstant
 * TODO
 * @Author Au
 * @Date 2019/7/18 17:14
 * @Description
 **/
public class ConfigConstant {

    private static Map<String, String> valueMap = new HashMap<>();

    static {
        ResourceBundle ct = ResourceBundle.getBundle("ct");
        for (String s : ct.keySet()) {
            valueMap.put(s, ct.getString(s));
        }
    }

    public static String getValue(String key) {
        return valueMap.get(key);
    }
}
