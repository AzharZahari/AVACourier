package net.javaguides.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.javaguides.usermanagement.model.User;


public class userDao {
	private String jdbcURL = "jdbc:mysql://localhost:3306/mycourier?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "password";

	private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  ( sendername, senderaddress, senderphone, recipientname,recipientaddress,  recipientphone, itemname, itemweight,  date,time,  price) VALUES " + " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?   );";

	private static final String SELECT_USER_BY_ID = "select id,sendername,recipientname,senderphone from users where id =?";
	private static final String SELECT_ALL_USERS = "select * from users";
	private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
	private static final String UPDATE_USERS_SQL = "update users set price = ?,sendername= ?, recipientname =? where id = ?;";

	public userDao() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertUser(User user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, user.getSendername());
			preparedStatement.setString(2, user.getSenderaddress());
			preparedStatement.setString(3, user.getSenderphone());
			preparedStatement.setString(4, user.getRecipientname());
			preparedStatement.setString(5, user.getRecipientaddress());
			preparedStatement.setString(6, user.getRecipientphone());
			preparedStatement.setString(7, user.getItemname());
			preparedStatement.setString(8, user.getItemweight());
			preparedStatement.setString(9, user.getTime());
			preparedStatement.setString(10, user.getDate());
			preparedStatement.setString(11, user.getPrice());
			preparedStatement.setString(12, user.getStatus());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public User selectUser(int id) {
		User user = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String sendername = rs.getString("sendername");
				String senderaddress = rs.getString("senderaddress");
				String senderphone = rs.getString("senderphone");
				String recipientname = rs.getString("recipientname");
				String recipientaddress = rs.getString("recipientaddress");
				String recipientphone = rs.getString("recipientphone");
				String itemname = rs.getString("itemname");
				String itemweight = rs.getString("itemweight");
				String date = rs.getString("date");
				String time = rs.getString("time");
				String price = rs.getString("price");
				String status = rs.getString("status");
				
				user = new User( id, sendername, senderaddress, senderphone, recipientname,recipientaddress,  recipientphone, itemname, itemweight,  date,time,  price, status);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}

	public List<User> selectAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String sendername = rs.getString("sendername");
				String senderaddress = rs.getString("senderaddress");
				String senderphone = rs.getString("senderphone");
				String recipientname = rs.getString("recipientname");
				String recipientaddress = rs.getString("recipientaddress");
				String recipientphone = rs.getString("recipientphone");
				String itemname = rs.getString("itemname");
				String itemweight = rs.getString("itemweight");
				String date = rs.getString("date");
				String time = rs.getString("time");
				String price = rs.getString("price");
				String status = rs.getString("status");
				users.add(new User( id, sendername, senderaddress, senderphone, recipientname,recipientaddress,  recipientphone, itemname, itemweight,  date,time,  price, status));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}

	public boolean deleteUser(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateUser(User user) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
			statement.setString(1, user.getSendername());
			statement.setString(2, user.getSenderaddress());
			statement.setString(3, user.getSenderphone());
			statement.setString(4, user.getRecipientname());
			statement.setString(5, user.getRecipientaddress());
			statement.setString(6, user.getRecipientphone());
			statement.setString(7, user.getItemname());
			statement.setString(8, user.getItemweight());
			statement.setString(9, user.getTime());
			statement.setString(10, user.getDate());
			statement.setString(11, user.getPrice());
			statement.setInt(12, user.getId());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}