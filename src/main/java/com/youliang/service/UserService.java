package com.youliang.service;

import com.youliang.entity.User;
import com.youliang.service.model.LoginResult;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
public interface UserService {

    LoginResult login(String loginStr, String password);

    User getById(int id);
}
