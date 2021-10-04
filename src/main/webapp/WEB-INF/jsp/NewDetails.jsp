<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
	
<!DOCTYPE html>
<html>
<head>
<%
	response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	
	if(session.getAttribute("user") == null){
		response.sendRedirect("/");
	}
%>
<title>User Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/template.css">

<style type="text/css">
body {
	/*color:#6a6f8c;*/
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

h3 {
	text-align: center;
}
.formAlign {
	margin-left: auto;
	margin-right: auto;
}
/*footer {
	     	padding-top: 10px;
	     	padding-bottom: 0px;
	     	position: relative;
	     	bottom:0;
	     	width:100%;
	     }*/
</style>

<script type="text/javascript">

	function validate(){
		
		var name = document.getElementById('name').value;
		var date = document.getElementById('date').value;
		var address = document.getElementById('address').value;
		var mobile = document.getElementById('mobile').value;
		var issuedby = document.getElementById('issuedby').value;
		var amount = document.getElementById('amount').value;
		var amountcollectedBy = document.getElementById('amountcollectedBy').value;
		
		if(name == ''){
			alert('Please enter name');
			return false;
		}
		if(date == ''){
			alert('Please select date');
			return false;
		}
		if(address == ''){
			alert('Please enter address');
			return false;
		}
		if(mobile == '' || mobile.length != 10 || isNaN(mobile)){
			alert('Please enter 10 digits Mobile Number');
			return false;
		}
		if(issuedby == ''){
			alert('Please enter issuedby');
			return false;
		}
		if(amount == '' || isNaN(amount)){
			alert('Please enter valid amount');
			return false;
		}
		if(amountcollectedBy == 'Select'){
			alert('Please select amountcollectedBy');
			return false;
		}
		else{
			if(confirm("Are you sure? you want to insert a record...")){
				return true;
			}
			else{
				return false;
			}
		}
		
	}

</script>

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

		<div class="testbox">
			<form:form modelAttribute="rentDetails" method="post" action="/saveRecord" > <!-- method="post" action="/saveRecord" onsubmit="retrun validateDetails()" -->
				<div class="banner">
					<h3>Rent Details</h3>
				</div>
				<br />
				<fieldset>
					<!-- <legend>Donation Form</legend> -->
					<!-- <div class="colums"> -->
					<div class="formAlign" align="center">
						<div class="item">
							<label for="fname"> Name<span>*</span></label> <input id="name"
								type="text" name="name" />
						</div>
						<div class="item">
							<label for="lname"> Rent Date<span>*</span></label> <input
								id="date" type="date" name="date" />
						</div>
						<div class="item">
							<label for="address"> Address<span>*</span></label> <input
								id="address" type="text" name="address" />
						</div>
						<div class="item">
							<label for="phone">Mobile Number</label> <input id="mobile"
								type="text" name="mobile" />
						</div>
						<div class="item">
							<label for="saddress">Issued By</label> <input id="issuedby"
								type="text" name="issuedby" />
						</div>
						<div class="item">
							<label for="city">Amount </label> <input id="amount" type="text"
								name="amount" />
						</div>
						<div class="item">
							<label for="amtclt">Amount Collected By</label> 
							<select
								name="amountcollectedBy" id="amountcollectedBy" class="form-select"
								aria-label="Default select example">
								<option>Select</option>
								<option>KempeGowda</option>
								<option>Manu</option>
								<option>Manoj</option>
								<option>Naveen</option>
							</select>
						</div>
					</div>
					<!-- </div> -->
				</fieldset>
				<br />

				<div class="btn-block">
					<button type="submit" onclick="return validate()">Save</button>
				</div>
			</form:form>
		</div>
	</div>
	<footer id="sticky-footer"
		class="flex-shrink-0 py-4 bg-dark text-white-50">
		<div class="container text-center">
			<small>Copyright &copy; CamRent</small>
		</div>
	</footer>
</body>
</html>