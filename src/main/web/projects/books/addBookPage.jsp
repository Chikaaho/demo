<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>添加书籍</title>
    <meta charset="UTF-8">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container" style="text-align: center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for="book_no">书籍编号</label>
            <input type="text" name="book_no" class="form-control" id="book_no" required>
        </div>
        <div class="form-group">
            <label for="book_name">书籍名称</label>
            <input type="text" name="books_name" class="form-control" id="book_name" required>
        </div>
        <div class="form-group">
            <label for="book_msg">书籍简介</label>
            <input type="text" name="books_msg" class="form-control" id="book_msg" required>
        </div>
        <div class="form-group">
            <label for="book_msg">书籍库存</label>
            <input type="text" name="books_stock" class="form-control" id="book_stock" required>
        </div>
        <button type="submit" class="btn btn-default">添加</button>
    </form>
</div>
</body>
</html>
