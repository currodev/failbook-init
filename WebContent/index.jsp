<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/jsp/common/header.jsp"%>
<link href="${pageContext.request.contextPath}/css/cover.css"
	rel="stylesheet">
</head>
<body class="text-center">

	<div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
		<%@ include file="/jsp/common/menu.jsp"%>

		<main role="main" class="inner cover"> <img class="mb-4"
			src="${pageContext.request.contextPath}/img/logo.png" alt=""
			width="72" height="72">
		<h1 class="cover-heading">Your insecure social network.</h1>
		<p class="lead">Share your photos and posts to everyone.</p>
		</main>

		<footer class="mastfoot mt-auto">
			<div class="inner">
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
			</div>
		</footer>
	</div>
	<%@ include file="/jsp/common/footer.jsp"%>