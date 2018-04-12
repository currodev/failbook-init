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

		<div id="search-term">
			<span></span>
		</div>
		<ul id="search-results" class="list-unstyled">
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

	<%@ include file="/jsp/common/jslibs.jsp"%>
	<script type="text/javascript" src="search.js"></script>
	<%@ include file="/jsp/common/footer.jsp"%>