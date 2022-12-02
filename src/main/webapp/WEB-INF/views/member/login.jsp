<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body class="align-middle">
<div class="container-fluid d-flex justify-content-center" style="height: 100vh">

    <div class="card align-self-center">
        <div class="card-header">
            LOGIN Page
        </div>
        <div class="card-body">
            <c:if test="${param.logout != null}">
                <h1>Logout........</h1>
            </c:if>
            <c:if test="${param.logout == null}">
                <form id="registerForm" action="/member/login" method="post" >
                    <div class="input-group mb-3">
                        <span class="input-group-text">아이디</span>
                        <input type="text" name="username" class="form-control" placeholder="USER ID">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">패스워드</span>
                        <input type="text" name="password" class="form-control" placeholder="PASSWORD">
                    </div>
                    <div class="input-group mb-3 ">
                        <input class="form-check-input" type="checkbox" name="remember-me">
                        <label class="form-check-label">
                            자동 로그인
                        </label>
                    </div>
                    <div class="my-4">
                        <div class="float-end">
                            <button type="submit" class="btn btn-primary submitBtn">LOGIN</button>
                        </div>
                    </div>
                </form>
            </c:if>
        </div><!--end card body-->
    </div><!--end card-->
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>