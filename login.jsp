<%@page import="maakaliflorist.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	User auth = (User) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("index.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/header.jsp"%>
<title>MAAKALI FLOWER MART</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>
<style>
	body {
	    background: linear-gradient(to right, #d53369, #cbad6d);
	}
	
	.card {
	    margin-top: 9rem;
	    width: 50rem;
	    height: 30rem;
	    padding: 1rem;
	    margin-left: 35rem;
	    font-family: 'Poppins', sans-serif;
	}
	
	.card-title {
	    font-weight: 700;
	    font-size: 2.5rem;
	}
	
	#emaillabel {
	    margin-top: 1rem;
	    font-weight: 500;
	    font-size: 1.5rem;
	}
	
	#exampleInputEmail1 {
	    margin-top: 5px;
	    font-weight: 500;
	}
	
	#exampleInputPassword1 {
	    margin-top: 5px;
	}
	
	#plabel {
	    margin-top: 1rem;
	    font-weight: 500;
	    font-size: 1.5rem;
	}
	
	.btn-dark {
	    font-weight: 500;
	    margin-top: 1.5rem;
	    margin-bottom: 10px;
	} 
	
	.btn-success {
	    font-weight: 500;
	} 
</style>
<body>
	<%@include file="/includes/navbar.jsp"%>

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email address</label> 
						<input type="email" name="login-email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="login-password" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>