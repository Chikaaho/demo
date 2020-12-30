<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户</title>
    <script src="../../statics/js/jquery-3.5.1.js"></script>
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container" style="text-align: center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改用户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="/users/updateUser" method="post">
        <input type="hidden" name="user_id" value="${users.user_id}">
        <input type="hidden" name="admins" value="${users.admins}">
        <div class="form-group">
            <label for="book_name">用户名称</label>
            <input type="text" name="books_name" class="form-control" id="book_name" value="${books.books_name}" required>
        </div>
        <div class="radio">
            <label class="radio-inline">性别</label>
            <input type="radio">
            <div type="" class="user_type">
            <input type="radio">
        </div>
            <label>用户类型</label>
            <select class="form-control">
                <option></option>
                <option></option>
                <option></option>
            </select>
        </div>
        <button type="submit" class="btn btn-default">修改</button>
    </form>
</div>
</body>
<script type="text/javascript">
    $(function () {
        let userType = ${users.admins}
        if (userType != "admin") {
            document.getElementsByClassName("user_type").style.visibility="hidden";
        }
    })
</script>
</html>
