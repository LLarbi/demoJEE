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
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
    <h1>Add user</h1>
<div class="container">
    <div class="row">
        <form method="post" action="${pageContext.request.contextPath}/add-user">
            <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon1">@</span>
                <input type="text" name="username" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
                <input type="submit" class="""btn btn-primary">
            </div>
        </form>
        <c:if test="${USER_ADDED_OK}">
            <div class="alert alert-success" role="alert">user successfully added !</div>
        </c:if>

    </div>
</div>
</body>
</html>
