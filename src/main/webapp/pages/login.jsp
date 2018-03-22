<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>blog &rsaquo; 登录</title>
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/pages/css/login.css" type='text/css' media='all' />
    <meta name='robots' content='noindex,nofollow' />
</head>
<body class="login login-action-login wp-core-ui">
<div id="login">
    <h1><a href="http://cn.wordpress.org/" title="基于 WordPress">Ticmy</a></h1>
    <div id="login_error">
        <strong>错误</strong>：无效用户名。<a href="http://www.ticmy.com/wp-login.php?action=lostpassword" title="找回丢失的密码">忘记密码</a>？<br>
    </div>
    <form name="loginform" id="loginform" action="${pageContext.request.contextPath}/user/login.do" method="post">
        <p>
            <label for="user_login">用户名<br />
                <input type="text" name="userName" id="user_login" class="input" value="" size="20" /></label>
        </p>
        <p>
            <label for="user_pass">密码<br />
                <input type="password" name="passWord" id="user_pass" class="input" value="" size="20" /></label>
        </p>
        <p class="forgetmenot"><label for="rememberme"><input name="rememberme" type="checkbox" id="rememberme" value="forever"  /> 记住我的登录信息</label></p>
        <p class="submit">
            <input type="submit" name="wp-submit" id="wp-submit" class="button button-primary button-large" value="登录" />
            <input type="hidden" name="redirect_to" value="http://www.ticmy.com/wp-admin/" />
            <input type="hidden" name="testcookie" value="1" />
        </p>
    </form>

    <p id="nav">
        <a href="http://www.ticmy.com/wp-login.php?action=lostpassword" title="找回密码">忘记密码？</a>
    </p>

    <script type="text/javascript">
        function wp_attempt_focus(){
            setTimeout( function(){ try{
                d = document.getElementById('user_login');
                d.focus();
                d.select();
            } catch(e){}
            }, 200);
        }

        wp_attempt_focus();
        if(typeof wpOnload=='function')wpOnload();
    </script>

    <p id="backtoblog"><a href="http://www.ticmy.com/" title="不知道自己在哪？">&larr; 回到 Ticmy</a></p>

</div>


<div class="clear"></div>
</body>
</html>
