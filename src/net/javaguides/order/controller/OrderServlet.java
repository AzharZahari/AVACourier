package net.javaguides.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.order.dao.OrderDao;
import net.javaguides.order.model.Order;



@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderDao orderDao;
	
	public void init() {
		orderDao = new OrderDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
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
		
		Order order = new Order();
		
		order.setSendername(sendername);
		order.setSenderaddress(senderaddress);
		order.setSenderphone(senderphone);
		order.setRecipientname(recipientname);
		order.setRecipientaddress(recipientaddress);
		order.setRecipientphone(recipientphone);
		order.setItemname(itemname);
		order.setItemweight(itemweight);
		order.setDate(date);
		order.setTime(time);
		
		
		try {
			orderDao.registerOrder(order);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("Sucess.jsp");
	}
}