<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>AVA COURIER</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #FFA500">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <img
					src="https://iconape.com/wp-content/png_logo_vector/ava-logo.png"
					alt="img" style="max-width: 30px; max-height: 34px"></img> Courier
				</a>
				<ul class="navbar-nav mr-auto text-left">
			
				<li><a href="<%=request.getContextPath()%>/welcome2.jsp"
					class="nav-link">Home</a></li>
			</ul>
			
			<ul class="navbar-nav mr-auto text-left left left">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">View Delivery</a></li>
			</ul>
			</div>
			

			
			
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Delivery</h3>
			<hr>
			<div class="container text-left">
			

				
			</div>
			<br>
			
			<table class=" table table-bordered" style="width:1200px">
			
			
				<thead>
					<tr>
					
					<th>Tracking No</th>
					
						<th>Sender Name</th>
						
						<th>Sender Phone</th>
						<th>Recipient Name</th>
						<th>Recipient Address</th>
						<th>Recipient Phone</th>
						<th>Status</th>
						<th>Update</th>
						
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.sendername}" /></td>
							
							<td><c:out value="${user.senderphone}" /></td>
							<td><c:out value="${user.recipientname}" /></td>
							<td><c:out value="${user.recipientaddress}" /></td>
							<td><c:out value="${user.recipientphone}" /></td>
							<td><c:out value="${user.status}" /></td>
							
							
							
							
							
							
							<td><a href="update.jsp?id=<c:out value='${user.id}' />"><button type="submit" class="btn btn-primary">Edit</button></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />"><button style=background-color:red type="submit" class="btn btn-primary ">Delete</button></a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%@ include file="footer.jsp"%>
</html>