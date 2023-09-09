<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="header3.jsp"%>

	<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
		<h1>Register Form</h1>
		<form action="Register" method="post">
			<div class="form-group">
				<label for="username">User Name:</label> <input type="text"
					class="form-control" id="username" placeholder="User Name"
					name="username" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="password"
					name="password" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone Number:</label> <input type="text"
					class="form-control" id="phone" placeholder="phone" name="phone"
					required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="text"
					class="form-control" id="email" placeholder="email" name="email"
					required>
			</div>
			<button type="submit" class="btn btn-primary">Register</button>
			<button type="reset" class="btn btn-primary">Reset</button>
		</form>
	</div>
</body>
</html>