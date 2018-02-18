import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

    private static String MySQLusername = ""; //INSERT MySQL username here
    private static String MySQLpassword = ""; //INSERT MySQL password here
    private static String MySQLdbUrl = "jdbc:mysql://localhost:3306/DBNAME"; //INSERT Database name into DBNAME for this line and line below
    private static String MySQLdbLOBUrl = "jdbc:mysql://localhost:3306/DBLOBNAME";

    public static Connection getConnection(DBType dbType) throws SQLException {

        switch (dbType) {
            case ORADB:
                //code to handle oracle database connections
                return null;

            case MYSQLDB:
                return DriverManager.getConnection(MySQLdbUrl, MySQLusername, MySQLpassword);

            case MYSQLDBLOB:
                return DriverManager.getConnection(MySQLdbLOBUrl, MySQLusername, MySQLpassword);

            default:
                return null;
        }

    }

    public static void showErrorMessage(SQLException e){
        System.err.println("Error: " + e.getMessage());
        System.err.println("Error Code: " + e.getErrorCode());
    }
}
