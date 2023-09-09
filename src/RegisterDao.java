import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
	
	
	
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
	
	
	public String insert(Member member)
	{
		loadDriver("com.mysql.cj.jdbc.Driver");
		Connection con = getConnection();
		String result = "Data entered successfully";
		String sql = "insert into login values(?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		
		ps.setString(1, member.getUsername());
		ps.setString(2, member.getPassword());
		ps.setString(4, member.getPhone());
		ps.setString(3, member.getEmail());
				ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}

}