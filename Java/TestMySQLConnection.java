import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestMySQLConnection {


    static String username = "dev";
    static String password = "dev";
    static String dbUrl = "jdbc:mysql://localhost:3306/cliTest";
    public static void main(String[] args) throws SQLException {

        Connection conn = null;

        try {
            conn = DriverManager.getConnection(dbUrl, username, password);

            System.out.println("Connection to MySQL database established.");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        } finally {
            conn.close();
            System.out.println("Connection to database closed.");
        }



    }
}
