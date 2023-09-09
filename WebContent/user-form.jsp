<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Courier Service</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Courier Service </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">order</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post"></form>
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post"></form>
				</c:if>

				
						<c:if test="${user != null}">
            			Edit User
            		<
            			
            		</c:if>
					

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${user.sendername}' />" class="form-control"
						name="sendername" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Sender Address</label> <input type="text"
						value="<c:out value='${user.senderaddress}' />" class="form-control"
						name="senderaddress">
				</fieldset>

				<fieldset class="form-group">
					<label>User Country</label> <input type="text"
						value="<c:out value='${user.senderphone}' />" class="form-control"
						name="senderphone">
						</fieldset>
						
						<fieldset class="form-group">
					<label>Recipient Address</label> <input type="text"
						value="<c:out value='${user.senderaddress}' />" class="form-control"
						name="senderaddress">
				</fieldset>
						
						<fieldset class="form-group">
					<label>Recipient Name</label> <input type="text"
						value="<c:out value='${user.recipientname}' />" class="form-control"
						name="recipientname">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Recipient Address</label> <input type="text"
						value="<c:out value='${user.recipientaddress}' />" class="form-control"
						name="recipientaddress">
				</fieldset>
				
				
				<fieldset class="form-group">
					<label>Recipient Phone</label> <input type="text"
						value="<c:out value='${user.recipientphone}' />" class="form-control"
						name="recipientphone" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Item Name</label> <input type="text"
						value="<c:out value='${user.itemname}' />" class="form-control"
						name="itemname">
				</fieldset>

				<fieldset class="form-group">
					<label>Item Weight</label> <input type="text"
						value="<c:out value='${user.itemweight}' />" class="form-control"
						name="itemweight">
				</fieldset>
				<fieldset class="form-group">
					<label>Date</label> <input type="text"
						value="<c:out value='${user.date}' />" class="form-control"
						name="date" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Time</label> <input type="text"
						value="<c:out value='${user.time}' />" class="form-control"
						name="time">
				</fieldset>

				<fieldset class="form-group">
					<label>Price</label> <input type="text"
						value="<c:out value='${user.price}' />" class="form-control"
						name="price">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				
			</div>
		</div>
	</div>
</body>
</html>