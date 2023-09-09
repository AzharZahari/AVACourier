<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>AVA COURIER</title>
<link rel="icon"
	href="https://iconape.com/wp-content/png_logo_vector/ava-logo.png"
	type="image/x-icon">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #FFA500;">
		<nav class="navbar mr-auto ">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <img
					src="https://iconape.com/wp-content/png_logo_vector/ava-logo.png"
					alt="img" style="max-width: 30px; max-height: 34px"></img> Courier
				</a>
			</div>
		</nav>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="welcome2.jsp">Home</a>
				</li>





				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">View Delivery</a></li>
					
					<li class="nav-item"><a class="nav-link" href="statistic.jsp">Statistic</a>
				</li>
					



				
			</ul>
			<%
				if (session.getAttribute("username") == "admin") {
			%>
			<a class="nav-Link" href="logout.jsp">Log Out</a>
			<%
				} else {
			%>
			<a class="nav-Link" href="login.jsp">Log Out</a> <br>&nbsp;&nbsp;&nbsp;
			<a class="nav-Link" href="memberRegistration.jsp">Register</a>
			<%
				}
			%>
		</div>
	</nav>