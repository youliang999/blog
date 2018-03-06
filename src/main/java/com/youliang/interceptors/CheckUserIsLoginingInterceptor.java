package com.youliang.interceptors;

import com.youliang.databind.DataBind;
import com.youliang.databind.DataBindManager;
import com.youliang.entity.User;
import com.youliang.enums.DataBindTypeEnum;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
public class CheckUserIsLoginingInterceptor extends AbstractDetectingUrlInterceptor {
    private static final Logger LOG = Logger.getLogger(SessionBindInterceptor.class);
    private static final DataBind<User> LOGIN_USER_BIND = DataBindManager.getInstance().getDataBind(DataBindTypeEnum.LOGIN_USER);
    @Override
    protected boolean doPreHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User current = LOGIN_USER_BIND.get();
        if(current != null) {
            LOG.info("================++++++++++++++ name: {}" +current.getUserName());
            response.sendRedirect("/user/main.do");
            return false;
        }
        return true;
    }
}
