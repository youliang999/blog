<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login</title>

    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/login.css">
    <script type="text/javascript">
        function checkForm(){
            var userName=document.getElementById("username").value;
            var password=document.getElementById("password").value;
            if(userName==null || userName==""){
                document.getElementById("login_err").innerHTML="用户名不能为空";
                return false;
            }
            if(password==null || password==""){
                document.getElementById("login_err").innerHTML="密码不能为空";
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <h3 class="form-title">LOGIN</h3>
            <form id="login" method="post" name="login" action="${pageContext.request.contextPath}/user/login.do" onsubmit="return checkForm()">
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="Username" id="username" name="userName" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Password" id="password" name="passWord" maxlength="8"/>
                    </div>
                    <div class="form-group">
                        <label class="checkbox">
                            <input type="checkbox" name="remember" value="1"/>记住我
                        </label>
                    </div>
                        <div id="error" name = "error" class="error">
                            <span class="login_error" id="login_err" >${errorMsg}</span>
                            </div>
                    <div class="form-group col-md-offset-9">
                        <button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
<%--
<script type=text/javascript>
    if('${errorMsg}'!=''){
       // var error = document.getElementsByName("error");
        $('.login_err').css('display','block');
    }
</script>--%>
