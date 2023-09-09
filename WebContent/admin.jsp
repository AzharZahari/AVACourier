<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="header3.jsp"%>

	<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
		<h1>Admin Login</h1>
		<form action="<%=request.getContextPath()%>/AdminServlet"
			method="post">
			<div class="form-group">
				<label for="username">User Name:</label> <input type="text"
					class="form-control" id="username" placeholder="User Name"
					name="txtName" required>
			</div>
			<div class="form-group">
				<label for="uname">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="Password"
					name="txtPwd" required>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			<button type="reset" class="btn btn-primary">Reset</button>
		</form>
	</div>
</body>
</html>