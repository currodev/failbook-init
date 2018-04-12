<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/jsp/common/header.jsp"%>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/navbar-top-fixed.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/home.css"
	rel="stylesheet">
</head>

<body>

	<%@ include file="/jsp/common/nav.jsp"%>

	<div class="container">

		<div id="minibio" class="col-4 float-left">
			<div id="me" class="text-center">
				<div class="photo">
					<img src="${pageContext.request.contextPath}/img/avatar128.png"
						alt="Avatar" class="rounded-circle">
				</div>
				<div class="name"></div>
				<div class="motto"></div>
			</div>
			<div id="about">
				<div>About</div>
				<div id="company"></div>
				<div id="country"></div>
				<div id="interest"></div>
			</div>
		</div>

		<div id="stream" class="col-8 float-right">
			<div id="share_post">
				<input type="text" id="your_post"
					class="form-control form-control-lg" placeholder="Share something" />
			</div>
			<ul class="list-unstyled">
				<!-- 
				<li class="media post"><img class="mr-3 rounded-circle"
					src="${pageContext.request.contextPath}/img/avatar64.png"
					alt="Avatar">
					<div class="media-body">
						<span class="mt-0 mb-1 name">Name</span>
						<div class="post_content">Lorem ipsum</div>
					</div></li>  -->
			</ul>
		</div>

	</div>

	<%@ include file="/jsp/common/jslibs.jsp"%>
	<script type="text/javascript" src="profile.js"></script>
	<%@ include file="/jsp/common/footer.jsp"%>