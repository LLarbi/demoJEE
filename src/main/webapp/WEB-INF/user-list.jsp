<%--
  Created by IntelliJ IDEA.
  User: larbi
  Date: 23/01/2023
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-8 offset-2">
            <c:forEach items="${users}" var="user">
                <p>${user.username} - ${user.firstname} - ${user.lastname}</p>
            </c:forEach>
        </div>

    </div>
</div>
</body>
</html>
