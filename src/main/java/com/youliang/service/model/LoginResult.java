package com.youliang.service.model;

import com.youliang.entity.User;
import lombok.Data;

import java.io.Serializable;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
@Data
public class LoginResult implements Serializable{
    private static final long serialVersionUID = 1546570622039691856L;
    private User loginUser;
    private int loginCode;
    private String loginMsg;
}
