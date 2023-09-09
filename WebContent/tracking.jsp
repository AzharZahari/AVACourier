<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<div class="container col-md-8 col-md-offset-5" style="overflow: auto"
			align="center">
			<%
				Connection con;
				PreparedStatement pst;
				ResultSet rs;
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycourier", "root", "password");

				String id = request.getParameter("id");
				out.print("");
				out.print("<h3>Track Parcel Status</h3>");

				if (id == null || id.isEmpty()) {
					pst = con.prepareStatement("select * from users");
					rs = pst.executeQuery();

					while (rs.next()) {

					}
				} else {

					pst = con.prepareStatement("select * from users where id =?");

					pst.setString(1, id);
					rs = pst.executeQuery();
					while (rs.next()) {
						out.print("<Table border=3 bgcolor=yellow>");
						out.print("<TR>");
						out.print("<TD>" + rs.getString("status") + "<TD>");
						out.print("</TR>");
						out.print("</Table>");
					}
				}
			%>

			<div class="container">
				<div class="form-group col-6 p-0">
					<form id="form" method="post" action="tracking.jsp"
						class="form-horizontal">
						<div class="form-group col-md-6" align="center">

							&nbsp;&nbsp;&nbsp; <input type="text" name="id"
								class="form-control" id="id" placeholder="Tracking No">
						</div>
						&nbsp;&nbsp;
						<div class="form-group col-md-6" align="center">
							&nbsp;&nbsp;
							<Button class="btn btn-success" style="width: 90px;">Submit</Button>
							&nbsp;&nbsp;

						</div>

					</form>
				</div>
			</div>
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