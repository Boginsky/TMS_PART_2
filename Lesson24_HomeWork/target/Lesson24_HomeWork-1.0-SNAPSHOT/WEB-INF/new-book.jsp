<%--
  Created by IntelliJ IDEA.
  User: Kirill Boginsky
  Date: 21.04.2021
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add new book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="container">
    <div class="row justify-content-md-center">
        <div class = "col-8">
            <form action="addition" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1" class="form-label">Name</label>
                    <input name ="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="Title">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="form-label">Author</label>
                    <input name ="author" type="text" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword2" class="form-label">Price</label>
                    <input name ="price" type="text" class="form-control" id="exampleInputPassword2">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
</body>
</html>


