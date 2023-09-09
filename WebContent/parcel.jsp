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
	<%@ include file="header.jsp"%>

	<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
		<h1>Order Form</h1>
		<form action="<%=request.getContextPath()%>/order" method="post">

			<div class="form-group">
				<label for="sendername">Sender Name:</label> <input type="text"
					class="form-control" id="sendername" placeholder="Sender Name"
					name="sendername" required>
			</div>

			<div class="form-group">
				<label for="senderaddress">Sender Address:</label> <input
					type="text" class="form-control" id="senderaddress"
					placeholder="Sender Address" name="senderaddress" required>
			</div>

			<div class="form-group">
				<label for="senderphone">Phone Number:</label> <input type="text"
					class="form-control" id="senderphone" placeholder="Sender Phone"
					name="senderphone" required>
			</div>

			<div class="form-group">
				<label for="recipientname">Recipient Name:</label> <input
					type="text" class="form-control" id="recipientname"
					placeholder="Recipient Name" name="recipientname" required>
			</div>

			<div class="form-group">
				<label for="recipientaddress">Recipient Address:</label> <input
					type="text" class="form-control" id="recipientaddress"
					placeholder="Recipient Address" name="recipientaddress" required>
			</div>

			<div class="form-group">
				<label for="recipientphone">Recipient Phone Number:</label> <input
					type="text" class="form-control" id="recipientphone"
					placeholder="Recipient Phone Number" name="recipientphone" required>
			</div>

			<div class="form-group">
				<label for="itemname">Item Name:</label> <input type="text"
					class="form-control" id="itemname" placeholder="Item Name"
					name="itemname" required>
			</div>

			<div class="form-group">
				<label for="itemweight">Item Weight:</label> <input type="text"
					class="form-control" id="itemweight" placeholder="Item Weight"
					name="itemweight" required>
			</div>

			<div class="form-group">
				<label for="date">Date:</label> <input type="date"
					class="form-control" id="date" placeholder="Date" name="date"
					required>
			</div>

			<div class="form-group">
				<label for="time">Time:</label> <input type="time"
					class="form-control" id="time" placeholder="Time" name="time"
					required>
			</div>

			<button type="submit" class="btn btn-primary">Register</button>
			<button type="reset" class="btn btn-primary">Reset</button>
		</form>
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