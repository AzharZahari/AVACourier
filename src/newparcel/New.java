package newparcel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/New")
public class New extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public New() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String sendername = request.getParameter("sendername");
		String senderaddress = request.getParameter("senderaddress");
		String senderphone = request.getParameter("senderphone");
		String recipientname = request.getParameter("recipientname");
		String recipientaddress = request.getParameter("recipientaddress");
		String recipientphone = request.getParameter("recipientphone");
		String itemname = request.getParameter("itemname");
		String itemweight = request.getParameter("itemweight");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		
		Item item = new Item(  sendername, senderaddress, senderphone, recipientname,recipientaddress,  recipientphone, itemname, itemweight,  date,time);
		
		ItemDao iDao = new ItemDao();
		String result = iDao.insert(item);
		response.getWriter().print(result);
		
	}

}