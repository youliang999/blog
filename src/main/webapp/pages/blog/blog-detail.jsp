<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <title>${author}'s blog - ${title}</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/pages/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <style type="text/css">
        div{
            width:100%;
        }
    </style>
</head>
<body>
    <div>
        <h3>${title}</h3>
        <div class="js_content_edit">${content}
        </div>
    </div>
</body>
</html>