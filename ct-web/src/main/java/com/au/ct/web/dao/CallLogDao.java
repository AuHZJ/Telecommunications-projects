package com.au.ct.web.dao;

import com.au.ct.web.bean.CallLog;

import java.util.List;
import java.util.Map;

/**
 * @ClassName CallLogDao
 * TODO
 * @Author Au
 * @Date 2019/7/22 20:15
 * @Description
 **/
public interface CallLogDao {
    List<CallLog> queryMonthDatas(Map<String, Object> paramMap);
}
