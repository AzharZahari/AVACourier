package net.javaguides.order.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.javaguides.order.model.Order;

public class OrderDao {

    public int registerOrder(Order order) throws ClassNotFoundException {
        String INSERT_order_SQL = "INSERT INTO users" +
            "   ( id, sendername, senderaddress, senderphone, recipientname, recipientaddress, recipientphone, itemname, itemweight, date, time) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/mycourier?useSSL=false", "root", "password");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_order_SQL)) {
        	
        	preparedStatement.setInt(1, order.getId());
        	preparedStatement.setString(2, order.getSendername());
        	preparedStatement.setString(3, order.getSenderaddress());
        	preparedStatement.setString(4, order.getSenderphone());
        	preparedStatement.setString(5, order.getRecipientname());
        	preparedStatement.setString(6, order.getRecipientaddress());
        	preparedStatement.setString(7, order.getRecipientphone());
        	preparedStatement.setString(8, order.getItemname());
        	preparedStatement.setString(9, order.getItemweight());
        	preparedStatement.setString(10, order.getDate());
        	preparedStatement.setString(11, order.getTime());
        	
        	
        	

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
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