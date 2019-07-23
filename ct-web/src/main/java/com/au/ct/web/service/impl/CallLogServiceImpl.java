package com.au.ct.web.service.impl;

import com.au.ct.web.bean.CallLog;
import com.au.ct.web.dao.CallLogDao;
import com.au.ct.web.service.CallLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName CallLogServiceImpl
 * TODO
 * @Author Au
 * @Date 2019/7/23 14:03
 * @Description
 **/
@Service
public class CallLogServiceImpl implements CallLogService {
    @Autowired
    private CallLogDao dao;

    @Override
    public List<CallLog> queryMonthDatas(String tel, String calltime) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("tel", tel);
        if (calltime.length() > 4) {
            calltime = calltime.substring(0, 4);
        }
        paramMap.put("calltime", calltime);
        return dao.queryMonthDatas(paramMap);
    }
}
