<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="fragments/header.jsp" />

<body>
<div class="container">


<div class="jumbotron">
    <div class="container text-center">
        <h1>Ювелирные украшения</h1>
        <p>Здесь представлены интересные образцы и поделки</p>
        <c:if test="${username != null}">
            <p>Добро пожаловать на сайт, <strong>${username}</strong>!</p>
        </c:if>
    </div>
</div>

<div class="container-fluid bg-1 text-center">
    <div class="row">
        <div class="col-sm-3">
            <p>Тюльпаны</p>
            <img src="/static/images/Tulips.jpg" class="img-responsive" style="width:100%" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Пингвины</p>
            <img src="/static/images/Penguins.jpg" class="img-responsive" style="width:100%" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Маяк</p>
            <img src="/static/images/Lighthouse.jpg" class="img-responsive" style="width:100%" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Гортензия</p>
            <img src="/static/images/Hydrangeas.jpg" class="img-responsive" style="width:100%" alt="Image">
        </div>
    </div>
</div><br>
</div>
<jsp:include page="fragments/footer.jsp" />
</body>
</html>









<%--<div class="form-container">--%>
    <%--<h1>Welcome to FileUploader Example</h1>--%>

    <%--Click on below links to see FileUpload in action.<br/><br/>--%>

    <%--<a href="<c:url value='/singleUpload' />">Single File Upload</a>  OR  <a href="<c:url value='multiUpload' />">Multi File Upload</a>--%>
<%--</div>--%>