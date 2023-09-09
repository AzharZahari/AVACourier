package csccorner;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycourier","root","password");
				String n=request.getParameter("txtName");
				String p=request.getParameter("txtPwd");
				PreparedStatement ps=con.prepareStatement("select username from login where username=? and password=?");
                ps.setString(1, n);
				ps.setString(2, p);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					RequestDispatcher rd=request.getRequestDispatcher("tracking.jsp");
							rd.forward(request, response);
					
				}
				else
				{
					
					
					RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
					rd.forward(request, response);
					
				}
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		};
	}

}
