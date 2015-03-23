<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Welcome to Panda</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="<%=basePath%>style/css/bootstrap.min.css">
<script src="<%=basePath%>style/js/jquery-1.11.2.min.js"></script>
<script src="<%=basePath%>style/js/bootstrap.min.js"></script>

<style>
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #eee;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
<script>
$(document).ready(function(){
	$("#register").click(function(){
		window.location.href="<%=basePath%>register.do";
	});
})
</script>
</head>

<body>

	<div class="container">

		<form class="form-signin" action="<%=basePath%>login.do" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="inputEmail" class="sr-only">Email address</label> <input
				type="email" id="email" name="email" class="form-control"
				placeholder="Email address" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="password" name="password" class="form-control"
				placeholder="Password" required>
			<div class="checkbox">
				<label> <input type="checkbox" name="rememberMe" value="true">
					Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" id="sign"
				type="submit">Sign in</button>
			<button class="btn btn-lg btn-primary btn-block" id="register"
				type="button">Register</button>
		</form>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" id="messageDiv">
				<c:if test="${not empty message  }">
					<div class="alert alert-danger" role="alert">
						<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						${message}
					</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
