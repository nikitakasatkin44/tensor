<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<body>
<jsp:include page="fragments/header.jsp" />

<div class="container-fluid text-center wrapper">
    <h3 class="margin">Кто я?</h3>
    <img src="/static/images/Nikita.jpg" class="img-responsive img-rounded margin" style="display:inline" alt="Nikita" width="400" height="400">
    <h3>Я - Программист!</h3>
</div>

<jsp:include page="fragments/footer.jsp" />
</body>
</html>
