package com.youliang.entity;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
@Data
@ToString
public class Blog implements Serializable{
    private static final long serialVersionUID = 8378147836558954058L;
    private int id;
    private String title;
    private String content;
    private int authorId;
    private Date updateDate;
    private Date createDate;
}
