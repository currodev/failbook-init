<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<a class="navbar-brand" href="#"> <img
		src="${pageContext.request.contextPath}/img/logo.png" width="30"
		height="30" alt="">
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarCollapse" aria-controls="navbarCollapse"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarCollapse">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/home">Home <span
					class="sr-only">(current)</span>
			</a></li>
			<li id="myprofile" class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/profile">Profile</a></li>
			<li id="logout" class="nav-item"><a class="nav-link" href="#">Logout</a></li>
		</ul>
		<form class="form-inline mt-2 mt-md-0">
			<input id="inputSearch" class="form-control mr-sm-2" type="text"
				placeholder="Search" aria-label="Search">
			<button id="buttonSearch" class="btn btn-outline-light my-2 my-sm-0"
				type="button">Search</button>
		</form>
	</div>
</nav>