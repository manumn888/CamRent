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
<title>View Details</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet" type="text/css" href="style.css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script> -->

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>

<style type="text/css">
body {
	/*color:#6a6f8c;*/
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

h3 {
	text-align: center;
}

/* footer {
	padding-top: 10px;
	padding-bottom: 0px;
	position: fixed;
	bottom: 0;
	width: 100%;
} */
</style>

<script type="text/javascript">
     	$(document).ready(function() {
		    $('#example').DataTable();
		} );
     </script>

</head>
<body>

	<div class="container" align="center">
		<br> <br> <br>


		<!-- <nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/home">CamRent</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="/home">Home</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">

						<li><a href="/logout"><span
								class="glyphicon glyphicon-log-in"></span> Logout</a></li>
					</ul>
				</div>
			</div>
		</nav> -->

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

		<br> <br> <br>

	</div>

	<div class="container" align="center">
		<div class="table-responsive-md">
			<table id="example" class="display">
				<thead>
					<tr>
						<th>Name</th>
						<th>Mobile No</th>
						<th>Address</th>
						<th>Amount</th>
						<th>IssuedBy</th>
						<th>Issued date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="details">
						<tr>
							<td>${details.name}</td>
							<td>${details.mobile}</td>
							<td>${details.address}</td>
							<td>${details.amount}</td>
							<td>${details.issuedby}</td>
							<td>${details.date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br> <br> <br> <br>
	</div>

	<div class="container">
		<%-- <div class="panel panel-primary" align="left" style="width: 300px">
			<div class="panel-heading">Total Amount</div>
			<div class="panel-body">${total}Rs</div>
		</div> --%>

		<div class="card bg-primary text-white" align="left" style="width: 300px">
			<div class="card-body">Total Amount</div>
			<div class="card">
				<div class="card-body" style="color: black;">${total}  Rs</div>
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