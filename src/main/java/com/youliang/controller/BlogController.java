package com.youliang.controller;

import com.google.gson.Gson;
import com.youliang.databind.DataBind;
import com.youliang.databind.DataBindManager;
import com.youliang.entity.Blog;
import com.youliang.entity.User;
import com.youliang.enums.DataBindTypeEnum;
import com.youliang.service.BlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by youliang.cheng on 2018/3/2.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {
    private static final Logger LOG = LoggerFactory.getLogger(BlogController.class);
    private static final DataBind<User> LOGIN_USER_BIND = DataBindManager.getInstance().getDataBind(DataBindTypeEnum.LOGIN_USER);

    @Autowired
    private BlogService blogService;

    @RequestMapping("/new")
    public ModelAndView newBlog() {
        LOG.info("+++++++++++++++++++ get a request.");
        ModelAndView mv = new ModelAndView("ueditor/index");
        User current = LOGIN_USER_BIND.get();
        LOG.info("+++++++++++++++++++ current user: {}", current);
        if(LOGIN_USER_BIND.get() != null) {
            return mv;
        } else {
            mv = new ModelAndView("index");
            return mv;
        }
    }

    @RequestMapping("/publish")
    @ResponseBody
    public String publishBlog(@RequestParam(value = "title", defaultValue = "") String title,
                              @RequestParam(value = "content", defaultValue = "") String content) {
        User current = LOGIN_USER_BIND.get();
        LOG.info("+++++++++++++++++++ current user: {}", current);
        Map<String, Object> data = new HashMap<String, Object>();
        if(LOGIN_USER_BIND.get() != null) {
            Blog blog = new Blog();
            blog.setTitle(title);
            blog.setContent(content);
            blog.setAuthorId(current.getId());
            boolean result = blogService.addBlog(blog);
            if(result) {
                data.put("status", 0);
            } else {
                data.put("status", 1);
                data.put("errorMsg", "发布失败！");
            }

        } else {
            data.put("status", 1);
            data.put("errorMsg", "请登录！");
        }
        return new Gson().toJson(data);
    }

    @RequestMapping("/{blogId}")
    public ModelAndView blogView(@PathVariable(value = "blogId") Integer id) {
        User current = LOGIN_USER_BIND.get();
        LOG.info("+++++++++++++++++++ current user: {}", current);
        ModelAndView mv = new ModelAndView("blog/blog-detail");
        Blog blog = blogService.getBlogById(id);
        if(blog != null) {
            mv.addObject("title", blog.getTitle());
            mv.addObject("content", blog.getContent());
            mv.addObject("author", "cyl");
        } else {
            mv.setViewName("blog/nofound");
        }
        return mv;
    }


}
