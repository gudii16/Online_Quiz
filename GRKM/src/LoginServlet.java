import java.io.IOException;
import java.sql.Connection; 
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
  
// Import Database Connection Class file  
  
// Servlet Name 
@WebServlet("/LoginServlet") 
public class LoginServlet extends HttpServlet 
{ 
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    { 
    	int flag=0;
    	String uname="";
        try 
        { 
  
            // Initialize the database 
            Connection con = DatabaseConnection.initializeDatabase(); 
            uname=request.getParameter("username");
    		String pass=request.getParameter("password");
            String query="select password from login where username='"+uname+"'";
            Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery(query);
    		if(rs.next())
    		{
    			String pw=rs.getString("password");
    			if(PasswordHandler.validatePassword(pass, pw))
				{
					flag=1;
				}
    		}
        
            st.close(); 
            con.close();            
        } 
        catch (Exception e) { 
            e.printStackTrace(); 
        } 
        
        
        
        if(flag==0)
        {
        	response.sendRedirect(request.getContextPath()+"/jsp/login.jsp");
        }
        else {
        	HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			
			response.sendRedirect("./DashboardServlet");
        }
        
        
    } 
} 