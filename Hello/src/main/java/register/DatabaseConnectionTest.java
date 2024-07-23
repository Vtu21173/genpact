package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionTest {

    public static void main(String[] args) {
        String jdbcUrl = "jdbc:mysql://localhost:3306/bank?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
        String dbUser = "root";
        String dbPassword = "Vtu21173@";

        try {
            // Establish connection
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Check if connection is successful
            if (connection != null) {
                System.out.println("Connected to database successfully!");

                // Optionally, perform additional operations like querying a test table
                // Example:
                // String query = "SELECT * FROM test_table";
                // PreparedStatement statement = connection.prepareStatement(query);
                // ResultSet resultSet = statement.executeQuery();
                // Process resultSet...

                // Close connection
                connection.close();
            } else {
                System.out.println("Failed to connect to database!");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

