<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/jsp/common/header.jsp"%>
<link href="${pageContext.request.contextPath}/css/signup.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<form class="form-signin">
			<div class="text-center mb-4">
				<a href="${pageContext.request.contextPath}/"> <img
					class="mb-4" src="${pageContext.request.contextPath}/img/logo.png"
					alt="" width="72" height="72">
				</a>
				<h1 class="h3 mb-3 font-weight-normal">Login</h1>
			</div>
			<div id="signup-result" class="alert text-center">
			<c:if test="${param.signup==1}">
			Registration ok. Please, sign in.
			</c:if>
			</div>
			<div class="form-label-group">
				<input type="email" id="inputEmail" class="form-control"
					placeholder="Email address" required autofocus> <label
					for="inputEmail">Email address</label>
			</div>

			<div class="form-label-group">
				<input type="password" id="inputPassword" class="form-control"
					placeholder="Password" required> <label for="inputPassword">Password</label>
			</div>

			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<button id="buttonLogin" class="btn btn-lg btn-primary btn-block" type="button">Sign
				in</button>
			<p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
		</form>
		<div class="text-center">
			Don't have an account? <a
				href="${pageContext.request.contextPath}/signup/">Sign up</a>
		</div>
	</div>
	<%@ include file="/jsp/common/jslibs.jsp"%>
	<script type="text/javascript" src="login.js"></script>
	<%@ include file="/jsp/common/footer.jsp"%>