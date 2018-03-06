package com.youliang.service.impl;

import com.youliang.dao.UserDao;
import com.youliang.entity.User;
import com.youliang.service.UserService;
import com.youliang.service.model.LoginResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    private static final Logger LOG = LoggerFactory.getLogger(UserServiceImpl.class);
    @Autowired
    private UserDao userDao;

    @Override
    public LoginResult login(String loginStr, String password) {
        LoginResult result = new LoginResult();
        LOG.info("++++ var1: {} var2: {}", loginStr, password);
        Integer id = userDao.getIdByEmail(loginStr);
        if(id==null || id <= 0) {
            result.setLoginCode(1);
            result.setLoginMsg("user is not exist.");
            return result;
        }
        Map<String, String> data = new HashMap<String, String>();
        data.put("email", loginStr);
        data.put("password", password);
        User user = userDao.login(data);
        if(user == null) {
            result.setLoginCode(2);
            result.setLoginMsg("user's username or password is error, login failed.");
        } else {
            result.setLoginCode(0);
            result.setLoginMsg("success");
            result.setLoginUser(user);
        }
        return result;
    }

    @Override
    public User getById(int id) {
        return userDao.getById(id);
    }
}
