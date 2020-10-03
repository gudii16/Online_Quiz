<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>ResultDash</title>
	
	<link rel="stylesheet" href="../css/style_ResultDash.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https:??maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body>
	<%  String name="";
		try{ name=session.getAttribute("username").toString();}
		catch(Exception e){ response.sendRedirect("index.jsp");}
		session.setAttribute("username", name);
	%>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Temperory Institute of Technology</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="about.jsp">About us</a></li>
					<li class="active"><a href="../DashboardServlet">Home</a></li>
					<li class="active"><a href="../Logout">Log out</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="form">
		    <h2>Select the Quiz:</h2>
		     <%
			  		int i=0;
					String[] sub=new String[6];
					if(((Integer)session.getAttribute("faca")).intValue()!=0)
					{
						sub[i++]="ACA";
					}
					if(((Integer)session.getAttribute("fos")).intValue()!=0)
					{
						sub[i++]="OS";
					}
					if(((Integer)session.getAttribute("fiot")).intValue()!=0)
					{
						sub[i++]="IoT";
					}
					if(((Integer)session.getAttribute("fcg")).intValue()!=0)
					{
						sub[i++]="CG";
					}
					if(((Integer)session.getAttribute("fadjava")).intValue()!=0)
					{
						sub[i++]="AdvJava";
					}
					i=0;
			
			%>
			
			<form  method="post" action="../ResultServletB">
				<select class="form-control form-control-lg" name="subject">
						<option value="none">--Select a subject--</option>
				  <% while(sub[i]!=null)
				   		out.println("<option value="+sub[i]+">"+sub[i++]+"</option>");
				  	 
				   %>
				</select><br>
				<button type="submit" value="Submit">Submit</button>
			</form>
			
			
			<br><br>
		</div>
	</div>
</body>
</html>