package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

    // Database connection parameters
    private static final String URL = "jdbc:mysql://localhost:3306/library_db";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "abhijeet";

    // Static block to load the MySQL JDBC driver
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // Log the exception or throw a runtime exception
            e.printStackTrace();
            throw new RuntimeException("Error loading MySQL JDBC driver", e);
        }
    }

    // Method to obtain a database connection
    public static Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            // Log the exception or throw a custom exception
            e.printStackTrace();
            throw new SQLException("Error connecting to database", e);
        }
        return connection;
    }

    // Optional: Method to close a connection (call this when done using the connection)
    public static void close(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace(); // Consider logging or handling this exception
            }
        }
    }
}
