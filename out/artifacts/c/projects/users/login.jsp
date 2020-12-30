<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>登录</title>
    <meta charset="UTF-8">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../statics/ico/Chika.ico" rel="icon">
    <script src="../../statics/js/jquery-3.5.1.js"></script>
    <link href="../../statics/css/usersStyle.css" rel="stylesheet">
</head>
<body>
<div class="container" style="text-align: center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>登录页面</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/users/loginCheck" method="post">
        <div class="form-group">
            <label for="user_name">用户名</label>
            <input type="text" class="form-control" id="user_name" name="user_name" placeholder="用户名">
        </div>
        <div class="form-group">
            <label for="user_pwd">密码</label>
            <input type="password" class="form-control" id="user_pwd" name="user_pwd" placeholder="密码">
            <span style="color: red;font-weight: bold">
                ${NAME_OR_PWD_ERROR}
                <em class="error_msg"></em>
            </span>
        </div>
        <button type="submit" class="btn btn-default" id="login" disabled="disabled">登录</button>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/users/addUserPage">注册</a>
    </form>
</div>
</body>
<script type="text/javascript">

    var name_check = "";
    var password_check = "";

    $(function () {
        $('#user_name').blur(function () {
            name_check = document.getElementById("user_name").value;
            console.log("get name");
            //$('#login').attr("disabled", "disabled");
            if (name_check == "" || password_check == "") {
                $('#login').attr("disabled", "disabled");
            }
            if (name_check != "" && password_check != "") {
                $('#login').removeAttr("disabled");
            }
        });
        $('#user_pwd').blur(function () {
            password_check = document.getElementById("user_pwd").value;
            console.log(password_check);
            //$('#login').attr("disabled", "disabled");
            if (name_check == "" || password_check == "") {
                $('#login').attr("disabled", "disabled");
            }
            if (name_check != "" && password_check != "") {
                $('#login').removeAttr("disabled");
            }
        });
        $('#user_name').bind('input propertychange',function () {
            name_check = document.getElementById("user_name").value;
            console.log("get name");
            //$('#login').attr("disabled", "disabled");
            if (name_check == "" || password_check == "") {
                $('#login').attr("disabled", "disabled");
            }
            if (name_check != "" && password_check != "") {
                $('#login').removeAttr("disabled");
            }
        });
        $('#user_pwd').bind('input propertychange', function () {
            password_check = document.getElementById("user_pwd").value;
            console.log(password_check);
            //$('#login').attr("disabled", "disabled");
            if (name_check == "" || password_check == "") {
                $('#login').attr("disabled", "disabled");
            }
            if (name_check != "" && password_check != "") {
                $('#login').removeAttr("disabled");
            }
        });
        $('#login').hover(function () {

        })
    });
</script>
</html>
