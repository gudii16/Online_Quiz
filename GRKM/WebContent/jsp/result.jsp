<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Result</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https:??maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
		button
		{
			font-family: Arial, Helvetica, sans-serif;
			outline: 0;
			background:  linear-gradient(rgba(255,0,128,0.6),rgba(0,0,128,0.6));
			width: 20%;
			border: 0;
			padding: 10px;
			color: white;
			font-size: 20px;
			cursor: pointer;
			border-radius: 3rem;
			overflow: hidden;
			margin: 30px 0;
			
		}
	</style>
</head>
<body>
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
	<% 
	if(null==session.getAttribute("username"))
	{
		response.sendRedirect("index.jsp");
	}
	
	String subject=session.getAttribute("subject").toString();
	String total_ques=session.getAttribute("total_ques").toString();
	String total_attempt=session.getAttribute("total_attempt").toString();
	String mark=session.getAttribute("mark").toString();%>
	<div class="container">
	<table class="table">
	<tr>
	<th>Subject</th>
	<th>Total Question</th>
	<th>Total attempt</th>
	<th>Marks</th>
	</tr>
	<tr>
	<td><%=subject%></td>
	<td><%=total_ques%></td>
	<td><%=total_attempt%></td>
	<td><%=mark%></td>
	</tr>
	</table>
	<form method='get' action='../DashboardServlet'>
	<button>Go To Dashboard</button>
	</form>
	</div>
</body>
</html>