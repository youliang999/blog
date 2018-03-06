<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="gb2312">
<title>个人博客模板古典系列之――江南墨卷</title>
<meta name="keywords" content="个人博客模板古典系列之――江南墨卷" />
<meta name="description" content="个人博客模板古典系列之――江南墨卷" />
<link href="${pageContext.request.contextPath}/pages/blog/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/pages/blog/css/index.css" rel="stylesheet">
<!--[if lt IE 9]>
<script type="text/javascript" src="${pageContext.request.contextPath}/pages/blog/js/modernizr.js"></script>
<![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/pages/blog/js/jquery.js"></script>
</head>
<body>
<div id="wrapper">
  <header>
    <div class="headtop"></div>
    <div id="navbar" class="navbar-right">
      <a class="navbar-brand" href="#">当前用户：『${currentUser.userName }』   </a>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/user/logout.do">登出</a>

    </div>
    <div class="contenttop">
      <div class="logo f_l">个人博客模板古典系列之――江南墨卷</div>
      <div class="search f_r">
        <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
          <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字'}" type="text">
          <input name="show" value="title" type="hidden">
          <input name="tempid" value="1" type="hidden">
          <input name="tbname" value="news" type="hidden">
          <input name="Submit" class="input_submit" value="搜索" type="submit">
        </form>
      </div>
      <div class="blank"></div>
      <nav>
        <div  class="navigation">
          <ul class="menu">
            <li><a href="index.jsp">网站首页</a></li>
            <li><a href="#">关于我</a>
              <ul>
                <li><a href="about.jsp">个人简介</a></li>
                <li><a href="listpic.jsp">个人相册</a></li>
              </ul>
            </li>
            <li><a href="#">我的日记</a>
              <ul>
                <li><a href="newslistpic.jsp">个人日记</a></li>
                <li><a href="newslistpic.jsp">学习笔记</a></li>
              </ul>
            </li>
            <li><a href="newslistpic.jsp">技术文章</a> </li>
            <li><a href="#">给我留言</a> </li>
            <li><a href="${pageContext.request.contextPath}/blog/new.do">写博客</a></li>
          </ul>
        </div>
      </nav>
      <SCRIPT type=text/javascript>
	// Navigation Menu
	$(function() {
		$(".menu ul").css({display: "none"}); // Opera Fix
		$(".menu li").hover(function(){
			$(this).find('ul:first').css({visibility: "visible",display: "none"}).slideDown("normal");
		},function(){
			$(this).find('ul:first').css({visibility: "hidden"});
		});
	});
</SCRIPT> 
    </div>
  </header>
  <div class="jztop"></div>
  <div class="container">
    <div class="bloglist f_l">
      <c:forEach var="blog" items="${blogs }" varStatus="status">
      <h3><a href="/blog/${blog.id}.do">${blog.title}</a></h3>
      <figure><img src="/pages/blog/images/img_2.jpg" alt="${blog.title}"></figure>
      <ul>
 <%--       <p>${blog.content}</p>--%>
        <a title="${blog.title}" href="/blog/${blog.id}.do" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
      </ul>
      <p class="dateview"><span>${blog.updateDate}</span><span>作者：${blog.authorId}</span><span>个人博客：[<a href="/jstt/bj/">心得笔记</a>]</span></p>
      </c:forEach>
    </div>
    <div class="r_box f_r">
      <div class="tit01">
        <h3 class="tit">关注我</h3>
        <div class="gzwm">
          <ul>
            <li><a class="email" href="#" target="_blank">我的电话</a></li>
            <li><a class="qq" href="#mailto:admin@admin.com" target="_blank">我的邮箱</a></li>
            <li><a class="tel" href="#" target="_blank">我的QQ</a></li>
            <li><a class="prize" href="#">个人奖项</a></li>
          </ul>
        </div>
      </div>
      <!--tit01 end-->
      
      <div class="tuwen">
        <h3 class="tit">图文推荐</h3>
        <ul>
          <li><a href="/"><img src="/pages/blog/images/01.jpg"><b>住在手机里的朋友</b></a>
            <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
          </li>
        </ul>
      </div>
      <div class="ph">
        <h3 class="tit">点击排行</h3>
        <ul class="rank">
          <li><a href="/jstt/bj/2017-07-13/784.html" title="【心路历程】请不要在设计这条路上徘徊啦" target="_blank">【心路历程】请不要在设计这条路上徘徊啦</a></li>
        </ul>
      </div>
      <div class="ad"> <img src="/pages/blog/images/03.jpg"> </div>
    </div>
  </div>
  <!-- container代码 结束 -->
  <footer>
    <div class="footer">
      <div class="f_l">
        <p>All Rights Reserved 版权所有</p>
      </div>
      <div class="f_r textr">
        <p>Design by aaa</p>
      </div>
    </div>
  </footer>
</div>
</body>
</html>
