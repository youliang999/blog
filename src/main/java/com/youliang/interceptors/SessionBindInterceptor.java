package com.youliang.interceptors;

import com.youliang.databind.DataBind;
import com.youliang.databind.DataBindManager;
import com.youliang.databind.SessionContext;
import com.youliang.entity.User;
import com.youliang.enums.DataBindTypeEnum;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by youliang.cheng on 2018/1/25.
 */
public class SessionBindInterceptor extends AbstractDetectingUrlInterceptor {
    private static final Logger LOG = Logger.getLogger(SessionBindInterceptor.class);
    private static final DataBind<User> LOGIN_USER_BIND = DataBindManager.getInstance().getDataBind(DataBindTypeEnum.LOGIN_USER);
    private final SessionContext sessionContext = SessionContext.getInstance();

    @Override
    protected boolean doPreHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User user = (User)request.getSession().getAttribute("currentUser");
        LOG.info("currentUser: "+ user);
        if(user == null) {
            if(request.getRequestURI() != null ) {
                LOG.info("request.getRequestURI(): {}"+request.getRequestURI());
                response.sendRedirect("/");
            }
            LOG.info("SessionBindInterceptor user is null.");
            return false;
        }
        sessionContext.bind(user);
        LOGIN_USER_BIND.put(user);
        User current = LOGIN_USER_BIND.get();
        LOG.info("name: {}"+current.getUserName());
        return true;
    }
}
