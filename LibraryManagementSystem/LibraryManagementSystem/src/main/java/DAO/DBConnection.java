package DAO;
import DAO.DBConnection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/librarydb"; // ✅ Use your actual DB name
    private static final String USER = "root"; // ✅ Your DB user
    private static final String PASSWORD = "Shreeswami1@"; // ✅ Your DB password

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // ✅ Required for MySQL
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new SQLException("MySQL JDBC Driver not found", e);
        }
    }
}
