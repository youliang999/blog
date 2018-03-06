package com.youliang.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;


/**
 * Created by youliang.cheng on 2018/2/27.
 */
@Data
public class User implements Serializable {
    private int id;
    private String email;
    private String userName;
    private String passWord;
    private int sex;
    private String intro;
    private Date updateDate;
    private Date createDate;
}
