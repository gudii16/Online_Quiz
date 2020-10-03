

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
 * Servlet implementation class SubjectServlet
 */
@WebServlet("/SubjectServlet")
public class SubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			HttpSession session = request.getSession();
			String name=session.getAttribute("username").toString();
			String subject=session.getAttribute("subject").toString();
			//String subject=request.getParameter("subject");
			Connection con = DatabaseConnection.initializeDatabase();
			String[] question=new String[10];
			String[] option1=new String[10];
			String[] option2=new String[10];
			String[] option3=new String[10];
			String[] option4=new String[10];
			String query="Select question from "+subject;
			Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery(query);
    		int i=0;
    		while(rs.next())
    		{
    			question[i++]=rs.getString("question");
    		}
    		
    		query="Select option1 from "+subject;
    		Statement st2 = con.createStatement();
    		rs = st2.executeQuery(query);
    		i=0;
    		while(rs.next())
    		{
    			option1[i++]=rs.getString("option1");
    		}
    		
    		query="Select option2 from "+subject;
    		Statement st3 = con.createStatement();
    		rs = st3.executeQuery(query);
    		i=0;
    		while(rs.next())
    		{
    			option2[i++]=rs.getString("option2");
    		}
    		
    		query="Select option3 from "+subject;
    		Statement st4 = con.createStatement();
    		rs = st4.executeQuery(query);
    		i=0;
    		while(rs.next())
    		{
    			option3[i++]=rs.getString("option3");
    		}
    		
    		query="Select option4 from "+subject;
    		Statement st5 = con.createStatement();
    		rs = st5.executeQuery(query);
    		i=0;
    		while(rs.next())
    		{
    			option4[i++]=rs.getString("option4");
    		}
    		
    		session.setAttribute("username", name);
    		session.setAttribute("subject", subject);
			session.setAttribute("question", question);
			session.setAttribute("option1", option1);
			session.setAttribute("option2", option2);
			session.setAttribute("option3", option3);
			session.setAttribute("option4", option4);
			
			
			response.sendRedirect("jsp/quesPage.jsp");
			
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
