package csccorner;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlett")
public class servlett extends HttpServlet 
{
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int i;
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        try {
            i++;
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            String sendername= request.getParameter("combo");

            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycourier","root","password");
            pst = con.prepareStatement("select sendername,senderaddress,senderphone,itemname from users where sendername=?");
            pst.setString(1, sendername);
            rs = pst.executeQuery();
             
             out.println("<table width=60% border= 1   >");
             out.println("<tr><td colspan=4 " );
             out.println("<center><h2>Result of Search Page</h2></center>");	
             out.println("</td></tr>");
             out.println("<tr>");
             out.println("<th>Employee id</th>");
             out.println("<th>Employee name</th>");
             out.println("<th>Title</th>");
             out.println("<th>Address</th>");
             out.println("</tr>");
              
              while(rs.next())
              {
                  out.println("<tr>");
                  out.println("<td>" + rs.getString("sendername") + "</td> ");
                  out.println("<td>" + rs.getString("senderaddress") + "</td> ");
                  out.println("<td>" + rs.getString("senderphone") + "</td> ");
                  out.println("<td>" + rs.getString("itemname") + "</td> ");
                  out.println("</tr>");

                  
              }
              out.println("</table>");
        
               } 
            catch (ClassNotFoundException ex) {
           
        }catch (Exception e) 
        { throw new ServletException("error", e); }
    }
    
    public void destory()
    {
        i = 0;
    }

    
}