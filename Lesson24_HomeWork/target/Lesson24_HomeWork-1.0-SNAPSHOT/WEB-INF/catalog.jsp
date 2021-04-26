<%--
  Created by IntelliJ IDEA.
  User: Kirill Boginsky
  Date: 21.04.2021
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-8">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Author</th>
                    <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${books}" varStatus="status">
                    <tr>
                        <td>${book.name}</td>
                        <td>${book.author}</td>
                        <td>${book.price}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <form action="addition" method="get">
            <input type="submit" style="margin-left: 35%" value="Add new book">
        </form>
        <form action="remove" method="get">
            <input type="submit" style="margin-left: 32%" value="Remove book by name">
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"></script>
</div>
</body>
</html>
