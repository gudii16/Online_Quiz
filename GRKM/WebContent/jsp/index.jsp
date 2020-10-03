<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>Welcome</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/style_wel_log_sign.css">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		
		<script src="https:??maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<% String flag="";
		   try{flag = request.getParameter("flag").toString();
		   %> <script>alert("Sign Up Successfully");</script> <%
		   }
		   catch(NullPointerException e){}
		%>
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
					
				</ul>
			</div>
		</div>
		</nav>
		<h1 align="center"><font color="black" size="40px">A platform for online quiz</font></h1>
		
		<div class="welcome">
		<div class="form">
			<form class="register-form" method="post">
			<input type="hidden" name="flag" value="1">
			<button type="submit" formaction="login.jsp">Log in</button> <br><br>
			<button type="submit" formaction="sign.jsp">Sign up</button>
			</form>
		</div>
		</div>
	</body>
</html>