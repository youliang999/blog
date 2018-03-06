package com.youliang.controller;

import com.youliang.databind.DataBind;
import com.youliang.databind.DataBindManager;
import com.youliang.entity.Blog;
import com.youliang.entity.User;
import com.youliang.enums.DataBindTypeEnum;
import com.youliang.service.BlogService;
import com.youliang.service.UserService;
import com.youliang.service.model.LoginResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by youliang.cheng on 2018/2/27.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    private static final Logger LOG = LoggerFactory.getLogger(UserController.class);
    private static final DataBind<User> LOGIN_USER_BIND = DataBindManager.getInstance().getDataBind(DataBindTypeEnum.LOGIN_USER);

    @Autowired
    private BlogService blogService;
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public ModelAndView login(User user, HttpServletRequest request)throws Exception{
        HttpSession session = request.getSession();
        //session.invalidate();
        LOG.info("user: {}", user);
        ModelAndView mv;
        LoginResult result = userService.login(user.getUserName(), user.getPassWord());
        if(result!= null && result.getLoginCode() == 0) {
            mv = new ModelAndView("/blog/index");
            user.setId(result.getLoginUser().getId());
            user.setSex(result.getLoginUser().getSex());
            session.setAttribute("currentUser", user);
            List<Blog> b = blogService.getBlogsByAuthorId(result.getLoginUser().getId());
            mv.addObject("blogs", b);
        } else {
            mv = new ModelAndView("index");
            mv.addObject("errorMsg", result.getLoginMsg());
        }
        return mv;
    }

    @RequestMapping("/main")
    public ModelAndView login() {
        ModelAndView mv;
        User current = LOGIN_USER_BIND.get();
        if(current != null) {
            mv = new ModelAndView("/blog/index");
            List<Blog> b = blogService.getBlogsByAuthorId(current.getId());
            mv.addObject("blogs", b);
        } else {
            mv = new ModelAndView("index");
        }
        return mv;
    }

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession) {
        User current = LOGIN_USER_BIND.get();
        LOG.info("+++++++++++++++++++ current user: {}", current);
        httpSession.invalidate();
        LOGIN_USER_BIND.remove();
        return "redirect:/";
    }
}
