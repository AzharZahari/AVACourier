<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("id");
	String driver = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "mycourier";
	String userid = "root";
	String password = "password";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from users where id=" + id;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>

<body>
	<%@ include file="header.jsp"%>
	<div class="container col-md-8 col-md-offset-5" style="overflow: auto"
		align="center">
		<h1>Update</h1>
		<form method="post" action="update-process.jsp">
			<input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
			<input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
			<br> Sender Name:<br> <input type="text" name="sendername"
				value="<%=resultSet.getString("sendername")%>"> <br>
			Recipient Name:<br> <input type="text" name="recipientname"
				value="<%=resultSet.getString("recipientname")%>"> <br>
			Item Name:<br> <input type="text" name="itemname"
				value="<%=resultSet.getString("itemname")%>"> <br>
			Status:<br> <input type="text" name="status"
				value="<%=resultSet.getString("status")%>"> <br> <br>
			<input type="submit" value="submit">
		</form>
		<%
			}
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
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