<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>blog | my blog</title>
<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"  href="${pageContext.request.contextPath}/pages/css/main.css" type='text/css' media='all' />
<meta name="generator" content="WordPress 3.5.2" />
<!-- Using Simple Yearly Archive Plugin v1.4.1 | http://www.schloebe.de/wordpress/simple-yearly-archive-plugin/ // -->
<%--<style type="text/css" id="syntaxhighlighteranchor"></style>--%>
</head>
<body>
<div id="wrap">
    <div id="header">
        <div class="blog-name" align="center">
            <h1><a href="http://www.ticmy.com/" title="Ticmy">Ticmy</a></h1>
        </div>
        <div class="menu">
            <div class="menu-%e5%b8%b8%e7%94%a8%e8%8f%9c%e5%8d%95-container"><ul id="menu-%e5%b8%b8%e7%94%a8%e8%8f%9c%e5%8d%95" class="headermenu"><li id="menu-item-16" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-16"><a href="http://www.ticmy.com">主页</a></li>
                <li id="menu-item-238" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-238"><a href="http://www.ticmy.com/?page_id=236">文章归档</a></li>
                <li id="menu-item-26" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="http://www.ticmy.com/?page_id=24">好书推荐</a></li>
                <li id="menu-item-22" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-22"><a href="http://www.ticmy.com/?page_id=2">关于我</a></li>
            </ul></div>		</div>
    </div><!--end header-->
    <div id="container"><div id="content">
        <div id="content-inner">
            <div class="post"  id="post-425">
            <c:forEach var="blog" items="${blogs }" varStatus="status">
                <div class="post-data">
                    <div class="title">
                        <h2><a href="/blog/${blog.id}.do" rel="bookmark">${blog.title}</a></h2>
                        <h3><span>分类：<a href="http://www.ticmy.com/?cat=3" title="查看 java 中的全部文章" rel="category">java</a>, <a href="http://www.ticmy.com/?cat=7" title="查看 并发 中的全部文章" rel="category">并发</a></span><span>评论：<a href="http://www.ticmy.com/?p=425#comments" title="《happens-before俗解》上的评论">13条</a></span><span>作者：${blog.authorId}</span><span>日期：${blog.updateDate}</span>			</h3>
                    </div>
                </div>
                <div class="post-txt">
                        ${blog.content}
                    <div class="tags">Tags: <a href="http://www.ticmy.com/?tag=happens-before" rel="tag">happens-before</a> , <a href="http://www.ticmy.com/?tag=jmm" rel="tag">jmm</a></div></div>					<div class="post"  id="post-413">
            </c:forEach>
               <div class='pagination'>
                   <span class='current'>1</span>
                   <a href='http://www.ticmy.com/?paged=2' class='inactive' >2</a>
                   <a href='http://www.ticmy.com/?paged=3' class='inactive' >3</a>
                   <a href='http://www.ticmy.com/?paged=2'>下一页</a>
                   <a href='http://www.ticmy.com/?paged=8'>最后</a>
               </div>
        </div>
    </div>
        <div id="sidebar">
            <div class="blog-master">
                <p></p>
            </div>

            <div class="widget_search">
                <form action="http://www.ticmy.com" method="get">
                    <input type="text" class="txt" id="s1" name="s" size="36" value="" /><input type="submit" class="btn" id="searchsubmit" name="submit" value="Search" />
                </form>
            </div>

            <div class="widget widget_archive"><h3>文章归档</h3>		<ul>
                <li><a href='http://www.ticmy.com/?m=201311' title='2013 年十一月'>2013 年十一月</a>&nbsp;(1)</li>
            </ul>
            </div><div class="widget widget_categories"><h3>分类目录</h3>		<ul>
            <li class="cat-item cat-item-3"><a href="http://www.ticmy.com/?cat=3" title="查看 java 下的所有文章">java</a> (44)
            </li>
        </ul>
        </div><div class="widget widget_tag_cloud"><h3>标签</h3><div class="tagcloud"><a href='http://www.ticmy.com/?tag=concurrency' class='tag-link-4' title='20 个话题' style='font-size: 18.9846153846pt;'>concurrency</a>
            <a href='http://www.ticmy.com/?tag=gc' class='tag-link-15' title='2 个话题' style='font-size: 9.93846153846pt;'>gc</a>
        </div><div class="widget widget_links"><h3>链接表</h3>
            <ul class='xoxo blogroll'>
                <li><a href="http://www.27tree.com/" target="_blank">27tree</a></li>
                <li><a href="http://commons.apache.org/" title="apache commons系列" target="_blank">apache commons</a></li>
                <li><a href="http://www.coderli.com" title="友情链接:coderli的博客" target="_blank">coderli的博客</a></li>
                <li><a href="http://www.javamex.com/tutorials/java_final_performance.shtml" title="java final关键字是否会带来性能提升？" target="_blank">does final improve performance?</a></li>
                <li><a href="http://gee.cs.oswego.edu/dl/" title="Java并发大神的主页" target="_blank">Doug Lea的主页</a></li>
                <li><a href="http://www.infoq.com/cn/articles/jvm-hotspot" title="讲述hotspot对象的结构" target="_blank">hotspot虚拟机对象探秘</a></li>
                <li><a href="http://commons.apache.org/bsf/" title="该项目可以在jdk1.4和1.5上使用jsr223，jdk1.6中已经集成进去了">javax.script</a></li>
                <li><a href="http://jcp.org/en/home/index" title="到这儿来搜索jsr" target="_blank">JCP</a></li>
                <li><a href="http://commons.apache.org/jexl/" title="一个速度很快的表达式引擎">JEXL</a></li>
                <li><a href="http://docs.oracle.com/javase/specs/index.html" title="Java虚拟机规范与Java语言规范" target="_blank">JVMS&amp;JLS</a></li>
                <li><a href="http://www.mozilla.org/rhino/" title="java中运行js脚本的javascript引擎" target="_blank">Rhino</a></li>
                <li><a href="http://support.hyperic.com/display/SIGAR/Home#Home-overview" title="在java中可以通过该开源项目获取到CPU，内存等使用情况，支持多平台" target="_blank">Sigar</a></li>
                <li><a href="http://www.ibm.com/developerworks/cn/java/j-jtp12214/" title="喜欢优化java语句测性能的要看看" target="_blank">动态编译与性能测量</a></li>
                <li><a href="http://www.ibm.com/developerworks/cn/java/j-jtp05236.html" target="_blank">处理 InterruptedException</a></li>
                <li><a href="http://blog.btnotes.com/">天天备忘录</a></li>
                <li><a href="http://blog.duplicatedcode.com/" title="巴郎的博客" target="_blank">巴郎的博客</a></li>
                <li><a href="http://ifeve.com/" title="促进并发编程的研究和传播" target="_blank">并发编程网</a></li>
                <li><a href="http://www-igm.univ-mlv.fr/~lecroq/string/index.html" title="众多字符串匹配的算法">精确字符串匹配</a></li>
            </ul>
        </div>
            <div class="widget widget_meta"><h3>功能</h3>			<ul>
                <li><a href="${pageContext.request.contextPath}/user/login.do">登录</a></li>
                <li><a href="http://www.ticmy.com/?feed=rss2" title="使用 RSS 2.0 订阅本站点内容">文章 <abbr title="Really Simple Syndication">RSS</abbr></a></li>
                <li><a href="http://www.ticmy.com/?feed=comments-rss2" title="使用 RSS 订阅本站点的所有文章的近期评论">评论 <abbr title="Really Simple Syndication">RSS</abbr></a></li>
                <li><a href="http://cn.wordpress.org/" title="基于 WordPress，一个优美、先进的个人信息发布平台。">WordPress.org</a></li>
            </ul>
            </div>

        </div>

    </div><!--end container-->
    <div id="footer">
        <div class="copyright">
            Copyright &copy; 2012-2014 		<em><a href="http://www.ticmy.com/">blog</a></em> All rights reserved.
            <script language="javascript" type="text/javascript" src="http://js.users.51.la/9519750.js"></script>
            <noscript><a href="http://www.51.la/?9519750" target="_blank"><img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/9519750.asp" style="border:none" /></a></noscript>		</div>
    </div><!--end footer-->
</div><!--end wrap-->
<script type='text/javascript' src='http://www.ticmy.com/wp-content/plugins/syntaxhighlighter/syntaxhighlighter3/scripts/shCore.js?ver=3.0.83c'></script>
<script type='text/javascript' src='http://www.ticmy.com/wp-content/plugins/syntaxhighlighter/syntaxhighlighter3/scripts/shBrushJava.js?ver=3.0.83c'></script>
<script type='text/javascript'>
    (function(){
        var corecss = document.createElement('link');
        var themecss = document.createElement('link');
        var corecssurl = "http://www.ticmy.com/wp-content/plugins/syntaxhighlighter/syntaxhighlighter3/styles/shCore.css?ver=3.0.83c";
        if ( corecss.setAttribute ) {
            corecss.setAttribute( "rel", "stylesheet" );
            corecss.setAttribute( "type", "text/css" );
            corecss.setAttribute( "href", corecssurl );
        } else {
            corecss.rel = "stylesheet";
            corecss.href = corecssurl;
        }
        document.getElementsByTagName("head")[0].insertBefore( corecss, document.getElementById("syntaxhighlighteranchor") );
        var themecssurl = "http://www.ticmy.com/wp-content/plugins/syntaxhighlighter/syntaxhighlighter3/styles/shThemeEclipse.css?ver=3.0.83c";
        if ( themecss.setAttribute ) {
            themecss.setAttribute( "rel", "stylesheet" );
            themecss.setAttribute( "type", "text/css" );
            themecss.setAttribute( "href", themecssurl );
        } else {
            themecss.rel = "stylesheet";
            themecss.href = themecssurl;
        }
        //document.getElementById("syntaxhighlighteranchor").appendChild(themecss);
        document.getElementsByTagName("head")[0].insertBefore( themecss, document.getElementById("syntaxhighlighteranchor") );
    })();
    SyntaxHighlighter.config.strings.expandSource = '+ expand source';
    SyntaxHighlighter.config.strings.help = '帮助';
    SyntaxHighlighter.config.strings.alert = 'SyntaxHighlighter\n\n';
    SyntaxHighlighter.config.strings.noBrush = '无法找到Brush：';
    SyntaxHighlighter.config.strings.brushNotHtmlScript = 'Brush不能设置 html-script选项';
    SyntaxHighlighter.defaults['gutter'] = false;
    SyntaxHighlighter.defaults['light'] = true;
    SyntaxHighlighter.defaults['pad-line-numbers'] = false;
    SyntaxHighlighter.defaults['toolbar'] = false;
    SyntaxHighlighter.all();
</script>
</body>
</html>
