package com.youliang;

import com.youliang.entity.Blog;
import com.youliang.service.BlogService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by youliang.cheng on 2018/3/1.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath*:*.xml"
})
public class App {

    @Autowired
    private BlogService blogService;

    @Test
    public void test() {
        Blog b = blogService.getBlogById(1);
        System.out.println("==== b"+ b);
    }
}
