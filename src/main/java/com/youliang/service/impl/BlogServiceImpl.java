package com.youliang.service.impl;

import com.youliang.dao.BlogDao;
import com.youliang.entity.Blog;
import com.youliang.service.BlogService;
import com.youliang.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
@Service("blogService")
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;

    @Override
    public Blog getBlogById(int id) {
        if(id <= 0) {
            return null;
        }
        return blogDao.getBlogById(id);
    }

    @Override
    public List<Blog> getBlogsByAuthorId(int authorId) {
        if(authorId <= 0) {
            return Collections.EMPTY_LIST;
        }
        return blogDao.getBlogsByAuthorId(authorId);
    }

    @Override
    public List<Blog> getBlogsByTitle(String title) {
        if(StringUtil.isEmpty(title)) {
            return Collections.EMPTY_LIST;
        }
        return blogDao.getBlogsByTitle(title);
    }

    @Override
    public boolean addBlog(Blog blog) {
        if(blog == null) {
            return false;
        }
        return blogDao.insertBlog(blog) > 0;
    }
}
