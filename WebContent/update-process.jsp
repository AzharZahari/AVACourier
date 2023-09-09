<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mycourier";%>
<%!String user = "root";%>
<%!String psw = "password";%>
<%
	String id = request.getParameter("id");
	String sendername = request.getParameter("sendername");
	String recipientname = request.getParameter("recipientname");
	String itemname = request.getParameter("itemname");
	String status = request.getParameter("status");
	if (id != null) {
		Connection con = null;
		PreparedStatement ps = null;
		int personID = Integer.parseInt(id);
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, psw);
			String sql = "Update users set id=?,sendername=?,recipientname=?,itemname=?,status=? where id="
					+ id;
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, sendername);
			ps.setString(3, recipientname);
			ps.setString(4, itemname);
			ps.setString(5, status);
			int i = ps.executeUpdate();
			if (i > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("/list");
				rd.forward(request, response);

			} else {
				out.print("There is a problem in updating Record.");
			}
		} catch (SQLException sql) {
			request.setAttribute("error", sql);
			out.println(sql);
		}
	}
%>