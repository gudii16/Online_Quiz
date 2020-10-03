

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
/**
 * Servlet implementation class ShowResult
 */
@WebServlet("/ShowResults")
public class ShowResults extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int faca=0,fos=0,fiot=0,fadjava=0,fcg=0,fglobal=0;
		try
		{
			Connection con = DatabaseConnection.initializeDatabase();
			HttpSession session = request.getSession();
			String uname=session.getAttribute("username").toString();
			
			
	        String query="Select * from result where username='"+uname+"';";
	        
            Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery(query);
    		while(rs.next())
    		{
    			String subject=rs.getString("subject");
    				if(subject.contentEquals("aca"))
    				{
    					faca=1;
    					fglobal=1;
    				}
    				if(subject.contentEquals("os"))
    				{
    					fos=1;
    					fglobal=1;
    				}
    				if(subject.contentEquals("cg"))
    				{
    					fcg=1;
    					fglobal=1;
    				}
    				if(subject.contentEquals("iot"))
    				{
    					fiot=1;
    					fglobal=1;
    				}
    				if(subject.contentEquals("advjava"))
    				{
    					fadjava=1;
    					fglobal=1;
    				}
    				
    			}
    		session.setAttribute("username", uname);
    		session.setAttribute("faca", faca);
			session.setAttribute("fos", fos);
			session.setAttribute("fiot", fiot);
			session.setAttribute("fadjava", fadjava);
			session.setAttribute("fcg", fcg);
			session.setAttribute("fglobal", fglobal);
			response.sendRedirect("jsp/ResultDash.jsp");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
