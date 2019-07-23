package com.au.ct.web.service;

import com.au.ct.web.bean.CallLog;

import java.util.List;

/**
 * @ClassName CallLogService
 * TODO
 * @Author Au
 * @Date 2019/7/23 14:02
 * @Description
 **/
public interface CallLogService {
    List<CallLog> queryMonthDatas(String tel, String calltime);
}
