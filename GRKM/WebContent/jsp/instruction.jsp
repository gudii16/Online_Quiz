<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<% 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>
<head>
	<meta charset="ISO-8859-1">
	<title>Instruction</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/style_dashboard.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<style>
			.container .button {
			    width : 10%;
			}
			
			.container button {
			    width : 20%;
			}
			
			.container .button2 {
				background:  linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0));
				background-color: #f44336;
				width: 15%;
				font-size: 16px;
				border-radius: 0rem;
			}
			.container .button3 {
				width: 20%;
				font-size: 20px;
				margin-left: 40%;
				border-radius: 3rem;
		    }
		

	</style>
</head>
<body>
	<%  String name="";
		try {name=session.getAttribute("username").toString();}
		catch(Exception e){ response.sendRedirect("index.jsp");}
		String subject=request.getParameter("subject");
		
		session.setAttribute("username", name);
		session.setAttribute("subject", subject);
	%>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<h3><font color="grey">Temperory Institute of Technology</font></h3>
			</div>
			
		</div>
	</nav>
	
	<div class="container">
	<h1>Quiz Instructions</h1>
	<h3>Please read the instructions carefully</h3>
	<ul style="font-size: 17px;">
	<li>&#10004;Navigate to the question(click the Next or Previous button)</li>
	<li>&#10004; Read the question</li>
	<li>&#10004; Read and Select the options</li>
	
	<li>&#10004; Click on <button class='button'>Next</button> or <button class='button'>Previous</button> for every question</li>
	<li><b>If you want to Quit,click on 'Submit'.</b></li>
	<li><b>Important:</b>If clicked on <button class="button2">Final Submit</button> then your quiz will be directly submitted and you <b>'can not reappear the quiz'</b></li>
	<li>Once the <b>Timer is out</b>, your quiz will be automatically submitted</li>
	<li>You can change your option at any time during the Quiz,but don't forget to click on <b>'Next'</b> or <b>'Previous'</b> button</li>
	<li><b>Do not " REFRESH "</b>, your quiz will be treated as <b>Completed</b> and you <b>'can not reappear the quiz'</b></li>
</ul><br><br>
	<form method="post" action="../SubjectServlet">
	<input type='hidden' name='reload' value='false'>
	<button class="button3" type="submit">Start Quiz</button>
	</form>
	</div>
</body>
</html>