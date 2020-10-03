import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 
  

public class DatabaseConnection 
{ 
    protected static Connection initializeDatabase() 
        throws SQLException, ClassNotFoundException 
    { 
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
  
        String dbName = "online_quiz"; 
        String dbUsername = "root"; 
        String dbPassword = "passwordOfMysqlClientServer"; 
  
        Class.forName(dbDriver); 
        Connection con = DriverManager.getConnection(dbURL + dbName, 
                                                     dbUsername,  
                                                     dbPassword); 
        return con; 
    } 
} 