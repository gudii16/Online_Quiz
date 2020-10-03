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
 * Servlet implementation class ResultPage
 */
@WebServlet("/DashboardServlet")
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			Connection con = DatabaseConnection.initializeDatabase(); 
			HttpSession session = request.getSession();
			String uname=session.getAttribute("username").toString();
			int faca=0,fos=0,fadjava=0,fiot=0,fcg=0;
			
			String query="select * from result where username='"+uname+"' and subject='aca'";
			Statement st1 = con.createStatement();
			ResultSet rs = st1.executeQuery(query);
			if(rs.next())
			{
				System.out.println(rs.getString("subject"));
				faca=1;
			}
			st1.close();
			query="select * from result where username='"+uname+"' and subject='os'";
			Statement st2 = con.createStatement();
			rs = st2.executeQuery(query);
			if(rs.next())
			{
				System.out.println(rs.getString("subject"));
				fos=1;
			}
			st2.close();
			query="select * from result where username='"+uname+"' and subject='advjava'";
			Statement st3 = con.createStatement();
			rs = st3.executeQuery(query);
			if(rs.next())
			{
				fadjava=1;
			}
			st3.close();
			query="select * from result where username='"+uname+"' and subject='iot'";
			Statement st4 = con.createStatement();
			rs = st4.executeQuery(query);
			if(rs.next())
			{
				fiot=1;
			}
			st4.close();
			query="select * from result where username='"+uname+"' and subject='cg'";
			Statement st5 = con.createStatement();
			rs = st5.executeQuery(query);
			if(rs.next())
			{
				fcg=1;
			}
			st5.close();
			session.setAttribute("faca", faca);
			session.setAttribute("fos", fos);
			session.setAttribute("fcg", fcg);
			session.setAttribute("fiot", fiot);
			session.setAttribute("fadjava", fadjava);
			response.sendRedirect("jsp/Dashboard.jsp");
			con.close();
		}
		catch(Exception e) {}
	}
}