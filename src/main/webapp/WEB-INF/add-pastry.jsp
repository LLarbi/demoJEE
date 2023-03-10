<%--
  Created by IntelliJ IDEA.
  User: larbi
  Date: 25/01/2023
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Pastry</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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

    <div class="row text-center">
        <h1 class="h3 mb-3 font-weight-normal">Add pastry</h1>
    </div>

    <div class="row">
        <div class="col-8 offset-2 mt-3">
            <div class="card">
                <div class="card-body text-dark">
                    <form action="${pageContext.request.contextPath}/pastries/add" method="post">
                        <div class="mb-3">
                            <label for="pastryName">Name</label>
                            <input id="pastryName" type="text" name="pastryName" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label for="pastryDescription">Description</label>
                            <textarea id="pastryDescription"  name="pastryDescription"
                                      class="form-control"></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="pastryImage">Lien Image</label>
                            <textarea id="pastryImage"  name="pastryImage"
                                      class="form-control"></textarea>
                        </div>

                        <div class="mb-3 text-end">
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

</body>
</html>