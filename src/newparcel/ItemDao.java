package newparcel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ItemDao {
	
	
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycourier","root","password");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	
	public String insert(Item item)
	{
		loadDriver("com.mysql.cj.jdbc.Driver");
		Connection con = getConnection();
		String result = "Data entered successfully";
		String sql = "insert into users values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		
		
		ps.setString(1, item.getSendername());
		ps.setString(2, item.getSenderaddress());
		ps.setString(3, item.getSenderphone());
		ps.setString(4, item.getRecipientname());
		ps.setString(5, item.getRecipientaddress());
		ps.setString(6, item.getRecipientphone());
		ps.setString(7, item.getItemname());
		ps.setString(8, item.getItemweight());
		ps.setString(9, item.getTime());
		ps.setString(10, item.getDate());
		ps.setInt(11, item.getId());
		
		
				ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}

}