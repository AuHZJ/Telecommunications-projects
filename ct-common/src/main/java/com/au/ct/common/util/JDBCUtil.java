package com.au.ct.common.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @ClassName JDBCUtil
 * TODO
 * @Author Au
 * @Date 2019/7/19 17:11
 * @Description
 **/
public class JDBCUtil {
    // CREATE USER 'ct'@'%' IDENTIFIED BY 'ct';
    // GRANT all ON ct.* TO 'ct'@'%';
    // FLUSH PRIVILEGES;
    private static final String MYSQL_DRIVER_CLASS = "com.mysql.jdbc.Driver";
    private static final String MYSQL_URL = "jdbc:mysql://192.168.43.38:3306/ct?useUnicode=true&characterEncoding=UTF-8";
    private static final String MYSQL_USERNAME = "ct";
    private static final String MYSQL_PASSWORD = "ct";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(MYSQL_DRIVER_CLASS);
            conn = DriverManager.getConnection(MYSQL_URL, MYSQL_USERNAME, MYSQL_PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
