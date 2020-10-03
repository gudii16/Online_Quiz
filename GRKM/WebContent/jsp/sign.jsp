<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!Doctype html>
<html>
	<head>
		<title>Signup</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/style_wel_log_sign.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!--jquery-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!--compiled and minified Javascript-->
		<script src="https:??maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<script type="text/javascript">
		function confirmPassword(theForm) 
		{
		    if (theForm.password.value != theForm.confirm.value)
		    {
		        alert("The passwords didn't match");
		        return false;
		    } 
		    else
		    {
		        return true;
		    }
		}
		
		</script>
		<% String flag="";
		   try{flag = request.getParameter("flag").toString();}
		   catch(NullPointerException e){%> <script>alert("Username already exits")</script> <%}
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
		<div class="login">
		<div class="form">
			<form class="register-form" method="post" action="../SignupServlet" onsubmit="return confirmPassword(this);">
			
			<input type="text" name="username" placeholder="User Id" maxlength = "50" required/>
			<input type="password" name="password" placeholder="Password" required/>
			<input type="password" name="confirm" placeholder="Confirm Password" required/>
			<button type="submit">Sign up</button><br>
			<font size="4px" color="black"><i>already have an account:<a href="login.jsp?flag=''" style="color:red">Log in</a></i></font>
			</form>
			
		</div>
		</div>
	</body>
</html>