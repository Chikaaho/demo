<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户管理</title>
    <link rel="stylesheet" href="../../statics/css/usersStyle.css">
    <script type="text/javascript" src="../../statics/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="../../statics/js/allUsers.js"></script>
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-lg-12 column">

        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function checkName() {
        $.post({
            url: "",
            type: "post",
            success: function () {

            },
            error: function () {

            }
        })
    };
    function checkPwd() {
        $.get({
            url: "",
            type: "post",
            success: function () {

            },
            error: function () {

            }
        })
    };
    function checkSex() {
        $.get({
            url: "",
            type: "post",
            success: function () {

            },
            error: function () {

            }
        })
    };
    function checkAdmin() {
        $.get({
            url: "",
            type: "post",
            success: function () {

            },
            error: function () {

            }
        })
    }
</script>
</html>
