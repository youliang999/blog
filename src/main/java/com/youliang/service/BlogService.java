package com.youliang.service;

import com.youliang.entity.Blog;

import java.util.List;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
public interface BlogService {

        Blog getBlogById(int id);

        List<Blog> getBlogsByAuthorId(int authorId);

        List<Blog> getBlogsByTitle(String title);

        boolean addBlog(Blog blog);
}
