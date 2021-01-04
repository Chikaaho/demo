<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>注册新用户</title>
    <meta charset="UTF-8">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="../../statics/js/jquery-3.5.1.js"></script>
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container" style="text-align: center;">
    <form action="/users/addUser" method="post">
        <div class="form-group">
            <label for="user_name">用户名称</label>
            <input type="text" name="user_name" class="form-control" id="user_name" required>
        </div>
        <div class="form-group">
            <label for="user_pwd">用户密码</label>
            <input type="password" name="user_pwd" class="form-control" id="user_pwd" required>
        </div>
        <div class="form-group">
            <label for="user_pwd_check">确认密码</label>
            <input type="password" name="user_pwd_check" class="form-control" id="user_pwd_check" required>
        </div>
        <div class="custom-radio">
            <label for="user_sex1">
                <input type="radio" name="user_sex" id="user_sex1" value="men">男
            </label>
            <label for="user_sex2">
                <input type="radio" name="user_sex" id="user_sex2" value="female">女
            </label>
        </div>
        <button type="submit" class="btn btn-default" disabled="disabled"
        id="regist">注册用户</button>
    </form>
</div>
</body>
<script>

    let password_check;
    let pwd_check_sec;

    $(function () {
        $('#user_pwd').blur(function () {
            password_check = document.getElementById("user_pwd").value;
            //$('#login').attr("disabled", "disabled");
            if (pwd_check_sec == "" || password_check == "") {
                $('#regist').attr("disabled", "disabled");
            }
            if (pwd_check_sec != "" && password_check != "") {
                $('#regist').removeAttr("disabled");
            }
            if (document.getElementById("user_pwd_check").value == "") {
                alert("请再次输入密码!")
                return;
            }
            let check = document.getElementById("user_pwd_check").value != document.getElementById("user_pwd").value;
            if (check) {
                console.log("两次输入密码不一致");
            } else {
                console.log("OK");
            }
        });
        $('#user_pwd_check').bind('input propertychange',function () {
            pwd_check_sec = document.getElementById("user_pwd_check").value;
            //$('#login').attr("disabled", "disabled");
            if (pwd_check_sec == "" || password_check == "") {
                $('#regist').attr("disabled", "disabled");
            }
            if (pwd_check_sec != "" && password_check != "") {
                $('#regist').removeAttr("disabled");
            }
            let check = document.getElementById("user_pwd_check").value != document.getElementById("user_pwd").value;
            if (check) {
                console.log("两次输入密码不一致");
            } else {
                console.log("OK");
            }
        });
    });

</script>
</html>