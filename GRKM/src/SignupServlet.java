import java.io.IOException;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
  
// Import Database Connection Class file  
  
// Servlet Name 
@WebServlet("/SignupServlet") 
public class SignupServlet extends HttpServlet 
{ 
    private static final long serialVersionUID = 1L; 
  
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
    { 
    	int flag=1;
        try
        {  
            Connection con = DatabaseConnection.initializeDatabase();  
            String uname=request.getParameter("username");
    		String pass=request.getParameter("password");
    		try {
    			pass=PasswordHandler.generateHashPassword(pass);
    		}
    		catch(Exception e) {
    			System.out.println(e);
    		}
            String query="Select * from login where username='"+uname+"'";
    
            Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery(query); 
    		if(rs.next())
    		{
    				flag=0;
    		}
    		if(flag==1)
    		{
	            PreparedStatement st1 = con.prepareStatement("insert into login(username, password) values(?, ?)"); 
	            st1.setString(1, uname);
	            st1.setString(2, pass); 
	            st1.executeUpdate();
	            response.sendRedirect("jsp/index.jsp?flag='1'");
    		}
    		else
    		{
    			response.sendRedirect("jsp/sign.jsp");
    		}
  
            // Close all the connections 
            st.close(); 
            con.close(); 
  
            
        } 
        catch (Exception e) { 
           
        } 
    } 
} 