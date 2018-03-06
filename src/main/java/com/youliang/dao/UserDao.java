package com.youliang.dao;

import com.youliang.entity.User;

import java.util.Map;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
public interface UserDao {
    Integer getIdByEmail(String email);

    User login(Map<String, String> login);

    User getById(int id);
}
