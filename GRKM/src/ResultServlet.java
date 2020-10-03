

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ResultServlet2
 */
@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			Connection con = DatabaseConnection.initializeDatabase();
			HttpSession session = request.getSession();
			String name=session.getAttribute("username").toString();
			
			String subject=session.getAttribute("subject").toString();
			
			int total=Integer.parseInt(session.getAttribute("total").toString());
			
			String res= request.getParameter("response");
			
			int mark=0,attempt=10,i=0,j=0;
			int answer[]=new int[10];
			String query="Select answer from "+subject;
			Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery(query);
    		while(rs.next())
    		{
    			answer[i]=rs.getInt("answer");
    			
    			i++;
    		}
			for(i=0;i<(2*total-1);i+=2)
			{
				char ch=res.charAt(i);
				if(Integer.parseInt(String.valueOf(ch))==(answer[j++]-1))
				{
					mark++;
				}
				else
				{
					if(Integer.parseInt(String.valueOf(ch))==4)
					{
						attempt--;
					}
				}
			}
			query="Select * from result where username='"+name+"' and subject='"+subject+"'";
			Statement st1=con.createStatement();
			rs = st1.executeQuery(query);
			if(rs.next())
			{
				response.sendRedirect("./DashboardServlet");
			}
			else
			{
				PreparedStatement st2 = con.prepareStatement("insert into result(username, subject,total_question, total_attempt,mark ) values(?, ?, ?, ?, ?)"); 
	            st2.setString(1, name);
	            st2.setString(2, subject);
	            st2.setInt(3, total);
	            st2.setInt(4, attempt);
	            st2.setInt(5, mark);
	            st2.executeUpdate();
	            
	            session.setAttribute("subject", subject);
				session.setAttribute("total_ques", total);
				session.setAttribute("total_attempt", attempt);
				session.setAttribute("mark", mark);
				response.sendRedirect("jsp/result.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	}

}
