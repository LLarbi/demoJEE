<%--
  Created by IntelliJ IDEA.
  User: larbi
  Date: 24/01/2023
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Pastry list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>

<div class="container">
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Pastries</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/pastries">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/pastries/add">Add</a>
                            </li>
                        </ul>
                        <form action="${pageContext.request.contextPath}/pastries" method="get" class="d-flex" role="search">
                            <input name="search" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
</div>

<div class="container">
        <div class="row  row-cols-2">
            <c:forEach items="${pastries}" var="pastry">
                <div class="card col m-2" style="width: 18rem;">
                    <img width="300" height="300" src="${pastry.image}" class="card-img-top rounded" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${pastry.name}</h5>
                        <p class="card-text">${pastry.description}</p>
                        <a href="${pageContext.request.contextPath}/pastries/delete?id=${pastry.id}" class="btn btn-primary stretched-link">Delete</a>
                    </div>
                </div>
            </c:forEach>
        </div>
</div>
</body>
</html>
