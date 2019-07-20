package com.au.ct.common.util;

import java.text.DecimalFormat;

/**
 * @ClassName NumberUtil
 * TODO
 * @Author Au
 * @Date 2019/7/18 15:13
 * @Description 数字处理工具类
 **/
public class NumberUtil {
    /**
     * 格式化补0
     *
     * @param num
     * @param length
     * @return
     */
    public static String format(int num, int length) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; ++i) {
            sb.append("0");
        }
        DecimalFormat df = new DecimalFormat(sb.toString());
        return df.format(num);
        // 方法二
//        StringBuilder sb = new StringBuilder();
//        String str = String.valueOf(num);
//        for (int i = 0; i < length - str.length(); i++) {
//            sb.append("0");
//        }
//        sb.append(str);
//        return sb.toString();
    }

    public static void main(String[] args) {
        System.out.println(format(19, 4));
    }
}
