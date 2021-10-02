<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<%
	response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	
	if(session.getAttribute("user") == null){
		response.sendRedirect("/");
	}
%>
<meta charset="utf-8">
<title>Amount Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
body {
	/*color:#6a6f8c;*/
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

h3 {
	text-align: center;
}
/*footer {
	     	padding-top: 10px;
	     	padding-bottom: 0px;
	     	position: relative;
	     	bottom:0;
	     	width:100%;
	     	}*/
</style>
</head>
<body>

	<div class="container" align="center">
		<br> <br> <br>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="/home"> <img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCrBvdXhrhPLiPnCEFTqgedRdn8CZ9vpPuPg&usqp=CAU"
					alt="Avatar Logo" style="width: 40px;" class="rounded-pill">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/home">Home</a></li>
					</ul>
					<span class="navbar-text">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link "
								aria-current="page" href="/logout">Logout</a></li>
						</ul>
					</span>
				</div>
			</div>
		</nav>

		<br>

		<div class="col-sm-4">
			<div class="card" style="width: 400px">
				<img class="card-img-top"
					src="https://wallpapercave.com/wp/wp2620011.jpg" alt="Card image"
					style="width: 100; height: 320px;">
				<div class="card-body">
					<h4 class="card-title">KempeGowda</h4>
					<p class="card-text">${amount[0]}  Rs</p>
				</div>
			</div>


			<br> <br>

			<div class="card" style="width: 400px">
				<img class="card-img-top"
					src="https://wallpaperaccess.com/full/2371250.jpg" alt="Card image"
					style="width: 100; height: 320px;">
				<div class="card-body">
					<h4 class="card-title">Manu</h4>
					<p class="card-text">${amount[1]}  Rs</p>
				</div>
			</div>

			<br> <br>

			<div class="card" style="width: 400px">
				<img class="card-img-top"
					src="https://www.blurayauthority.com/wp-content/uploads/2016/04/madmaxfuryroaduhd_pub.png"
					alt="Card image" style="width: 100; height: 320px;">
				<div class="card-body">
					<h4 class="card-title">Manoj</h4>
					<p class="card-text">${amount[2]}  Rs</p>
				</div>
			</div>

			<br> <br>

			<div class="card" style="width: 400px">
				<img class="card-img-top"
					src="https://wallpapercave.com/wp/wp8405762.jpg" alt="Card image"
					style="width: 100; height: 320px;">
				<div class="card-body">
					<h4 class="card-title">Naveen</h4>
					<p class="card-text">${amount[3]}  Rs</p>
				</div>
			</div>
		</div>

		<br> <br> <br> <br>

	</div>

	<footer id="sticky-footer"
		class="flex-shrink-0 py-4 bg-dark text-white-50">
		<div class="container text-center">
			<small>Copyright &copy; CamRent</small>
		</div>
	</footer>


</body>
</html>