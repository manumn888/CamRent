<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>

<%
	response.setHeader("cache-control", "no-cache, no-store"); //, must-revalidate
	response.setDateHeader ("Expires", 0);
	
	if(session.getAttribute("user") == null){
		response.sendRedirect("/");
	}
%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Home Page</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
body {
	/*color:#6a6f8c;*/
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

h3 {
	text-align: center;
}

footer {
	padding-top: 10px;
	padding-bottom: 0px;
	position: relative;
	bottom: 0;
	width: 100%;
}
</style>

<script type="text/javascript">
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script>

</head>

<body>
	<div class="container" align="center">
		<br>
		<br>
		<br>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">CamRent</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">

						<li><a href="/logout"><span class="glyphicon glyphicon-log-in"></span>
								Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>

	</div>
	
	<div class="container" align="right">
		<c:if test="${save == true }">
			<div class="panel panel-info" align="left" style="width: 300px">
				<div class="panel-heading">Message</div>
				<div class="panel-body">${result}</div>
			</div>
		</c:if>
	</div>

	<div class="container" align="center">
		<br>
		<div class="row">
			<div class="col-sm-4">
				<h3>View Details</h3>
				<a href="/viewDetails">
					<img src="https://wallpaperaccess.com/full/271965.jpg"
					class="img-rounded" alt="Eye" width="304" height="236">
				</a>
			</div>
			<div class="col-sm-4">
				<h3>Add new Record</h3>
				<a href="/newRecord">
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCrBvdXhrhPLiPnCEFTqgedRdn8CZ9vpPuPg&usqp=CAU"
					alt="Eye" width="304" height="236">
				</a>
			</div>
			<div class="col-sm-4">
				<h3>Amount Details</h3>
				<a href="/amountDetails">
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbEeZfmZ00uJSQ3KXfbN-F44ir0khEmefkxex4QogmHdf0qtSeINdq2z8ewEt8bLwuWag&usqp=CAU"
					class="img-rounded" alt="Eye" width="304" height="236">
				</a>
			</div>
			<br>
			<br>
			<br>
			<br>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>

	

	<footer id="sticky-footer"
		class="flex-shrink-0 py-4 bg-dark text-white-50">
		<div class="container text-center">
			<small>Copyright &copy; CamRent</small>
		</div>
	</footer>
</body>
</html>