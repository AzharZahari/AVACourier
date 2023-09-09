<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>AVA COURIER</title>


</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #e3f2fd;">
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


				<li class="nav-item"><a class="nav-link" href="tracking.jsp">Track</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="parcel.jsp">Parcel</a>
				</li>


				<%
					if (session.getAttribute("username") == "admin") {
				%>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="Court.jsp"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Court </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="Booking.jsp">Booking</a> <a
							class="dropdown-item" href="user-list.jsp">View Delivery</a>
					</div></li>
				<%
					}
				%>
				<li class="nav-item"><a class="nav-link" href="About.jsp">About
						Us</a></li>
			</ul>
			<%
				if (session.getAttribute("username") == "admin") {
			%>
			<a class="nav-Link" href="logout.jsp">Log Out</a>
			<%
				} else {
			%>
			<a class="nav-Link" href="login.jsp">Log Out</a> <br>&nbsp;&nbsp;
			<a class="nav-Link" href="memberRegistration.jsp">Register</a>
			&nbsp;&nbsp; <a class="nav-Link" href="admin.jsp">Admin</a>
			<%
				}
			%>
		</div>
	</nav>