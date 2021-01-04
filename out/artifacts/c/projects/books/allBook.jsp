<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询书籍</title>
    <meta>
    <!--BootStrap-->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="../../statics/js/jquery-3.5.1.js"></script>
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container" style="text-align: center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ———— 显示所有书籍</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <a class="btn btn-primary"
                   href="${pageContext.request.contextPath}/book/addBookPage">新增书籍</a>
            </div>
            <div class="col-md-4">
                <a class="btn btn-primary"
                   href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>
            <div class="col-md-4">
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${error}
                        <em class="error_msg"></em>
                    </span>
                    <input type="text" name="queryBookName" class="from-control" placeholder="请输入要查询的书籍名称">
                    <input type="submit" value="查询">
                </form>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍简介</th>
                    <th>书籍库存</th>
                    <th>操作</th>
                </tr>
                </thead>
                <!--从list中遍历数据-->
                <c:forEach var="books" items="${list}">
                    <tbody>
                    <tr>
                        <td>${books.books_no}</td>
                        <td>${books.books_name}</td>
                        <td>${books.books_msg}</td>
                        <td>${books.books_stock}</td>
                        <td>
                            <a class="btn btn-info btn-sm"
                               href="/book/updateBookPage/?id=${books.books_id}">修改</a>
                            &nbsp; || &nbsp;
                            <a class="btn btn-danger btn-sm"
                               href="/book/deleteBook/${books.books_id}">删除</a>
                        </td>
                    </tr>
                    </tbody>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
