package com.au.ct.common.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName DateUtil
 * TODO
 * @Author Au
 * @Date 2019/7/18 15:02
 * @Description 日期处理工具
 **/
public class DateUtil {
    /**
     * 将日期字符串按照指定的格式解析为日期对象
     *
     * @param dateString
     * @param format
     * @return
     */
    public static Date parse(String dateString, String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        Date parse = null;
        try {
            parse = sdf.parse(dateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return parse;
    }

    /**
     * 将指定的日期按照指定的格式格式化为字符串
     *
     * @param date
     * @param format
     * @return
     */
    public static String format(Date date, String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(date);
    }
}
