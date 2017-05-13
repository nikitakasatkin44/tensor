<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
	<body>
	<jsp:include page="fragments/header.jsp" />
	<div class="container">
		<c:url var="loginUrl" value="/login" />
		<form class="form-signin" action="${loginUrl}" method="post">
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Invalid username and password.</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>You have been logged out successfully.</p>
				</div>
			</c:if>
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="username" class="sr-only">Login</label>
			<input type="text" id="username" name="ssoId" class="form-control" placeholder="Username" required autofocus>
			<label for="password" class="sr-only">Password</label>
			<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
			<div class="checkbox">
				<label><input type="checkbox" value="remember-me" id="rememberme" name="remember-me"> Remember me</label>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				   value="${_csrf.token}" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		</form>
	</div>
	<jsp:include page="fragments/footer.jsp" />
	</body>
</html>