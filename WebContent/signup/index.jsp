<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/jsp/common/header.jsp"%>
<link href="${pageContext.request.contextPath}/css/signup.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<form class="form-signup">
			<div class="text-center mb-4">
				<a href="${pageContext.request.contextPath}/"> <img
					class="mb-4" src="${pageContext.request.contextPath}/img/logo.png"
					alt="" width="72" height="72">
				</a>
				<h1 class="h3 mb-3 font-weight-normal">Sign up</h1>
			</div>
			<div id="signup-result" class="alert text-center"></div>
			<div class="form-row">
				<div class="form-label-group col-md-6">
					<input type="email" id="inputEmail" name="inputEmail"
						class="form-control" placeholder="Email address" required
						autofocus> <label for="inputEmail">Email address</label>
				</div>
				<div class="form-label-group col-md-6">
					<input type="text" id="inputName" name="inputName"
						class="form-control" placeholder="Full name" required> <label
						for="inputName">Full name</label>
				</div>
			</div>

			<div class="form-row">
				<div class="form-label-group col-md-6">
					<input type="password" id="inputPassword" name="inputPassword"
						class="form-control" placeholder="Password" required> <label
						for="inputPassword">Password</label>
				</div>

				<div class="form-label-group col-md-6">
					<input type="password" id="inputRepeatPassword"
						name="inputRepeatPassword" class="form-control"
						placeholder="Repeat password" required> <label
						for="inputRepeatPassword">Repeat password</label>
				</div>
			</div>

			<div class="form-row">
				<div class="form-label-group col-md-6">
					<input type="text" id="inputCompany" name="inputCompany"
						class="form-control" placeholder="Company"> <label
						for="inputCompany">Company</label>
				</div>

				<div class="form-label-group col-md-6">
					<input type="text" id="inputCountry" name="inputCountry"
						class="form-control" placeholder="Country"> <label
						for="inputCountry">Country</label>
				</div>
			</div>

			<div class="form-row">
				<div class="form-label-group col-md-6">
					<input type="text" id="inputMotto" name="inputMotto"
						class="form-control" placeholder="Motto"> <label
						for="inputMotto">Motto</label>
				</div>

				<div class="form-label-group col-md-6">
					<input type="text" id="inputInterest" name="inputInterest"
						class="form-control" placeholder="Interest"> <label
						for="inputInterest">Interest</label>
				</div>
			</div>

			<button id="buttonSignup" class="btn btn-lg btn-primary" type="button">Sign up</button>
			<p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
		</form>
		<div class="text-center">
			Have an account? <a href="${pageContext.request.contextPath}/login/">Log
				in</a>
		</div>
	</div>
	<%@ include file="/jsp/common/jslibs.jsp"%>
	<script type="text/javascript" src="signup.js"></script>
	<%@ include file="/jsp/common/footer.jsp"%>