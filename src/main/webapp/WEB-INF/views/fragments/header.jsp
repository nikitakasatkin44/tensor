<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<head>
    <title>Jewelry site</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="/static/jquery/jquery-3.2.1.js"></script>
    <script src="/static/js/script.js"></script>
    <spring:url value="/static/css/style.css" var="coreCss" />
    <spring:url value="/static/css/bootstrap.min.css"
                var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>

<spring:url value="/" var="urlHome" />
<spring:url value="/users/add" var="urlRegister" />
<spring:url value="/about" var="about" />
<spring:url value="/users" var="users" />
<spring:url value="/games" var="games" />
<spring:url value="/login" var="urlLogin" />
<spring:url value="/logout" var="urlLogout" />

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">

        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="${urlHome}">Домашняя страница</a></li>
                <li><a href="${about}">Обо мне</a></li>
                <li><a href="#">Галерея</a></li>
                <li><a href="#">Контакты</a></li>
                <li><a href="${users}">Пользователи</a></li>
                <li><a href="${games}">Игры</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <sec:authorize access="isFullyAuthenticated()">
                    <li><a href="${urlLogout}">Логаут</a></li>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                    <li><a href=${urlLogin}>Логин</a></li>
                    <li><a href=${urlRegister}>Регистрация</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>