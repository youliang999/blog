package com.youliang.controller;

import com.baidu.ueditor.ActionEnter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by youliang.cheng on 2018/3/5.
 */
@Controller
@RequestMapping("baidu")
public class UploadController {

    @RequestMapping("upload")
    public void config(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-Type", "text/html");
            String rootPath = request.getSession().getServletContext().getRealPath("/");
            String exec = new ActionEnter(request,"", rootPath).exec();
            PrintWriter writer = response.getWriter();
            writer.write(exec);
            writer.flush();
            writer.close();
        } catch(IOException e) {
            e.printStackTrace();
        }
    }
}
