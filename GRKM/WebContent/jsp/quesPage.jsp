<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Question page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<style>
		div#test{ padding:10px 40px 40px 40px; }
		.button {
			    font-family: Arial, Helvetica, sans-serif;
				outline: 0;
				background:  linear-gradient(rgba(255,0,128,0.6),rgba(0,0,128,0.6));
				width: 20%;
				border: 0;
				padding: 15px;
				color: white;
				font-size: 16px;
				cursor: pointer;
				border-radius: 3rem;
				overflow: hidden;
				margin : 0 40px;
			}
			
			.button2 {background:  linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0));
			background-color: #f44336;
						width: 15%;
						font-size: 20px;
						margin-left: 80%;
						border-radius: 0rem;
						}  

</style>
	<script src="https:??maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
	<%String name="";
	  try{ name=session.getAttribute("username").toString();}
	  catch(Exception e){ response.sendRedirect("index.jsp");};
	  String subject=session.getAttribute("subject").toString();
	  String[] question = (String[])session.getAttribute("question");
	  String[] option1 = (String[])session.getAttribute("option1");
	  String[] option2 = (String[])session.getAttribute("option2");
	  String[] option3 = (String[])session.getAttribute("option3");
	  String[] option4 = (String[])session.getAttribute("option4");
	  int i=0,total;
	  total=question.length;
	  
	  %>
	
	var pos = 0, test, test_status, quest, choice, choices, chA, chB, chC,chD;
	var response=[
		<%while(i<total-1)
		{%>
			4,
		<%
			i++;
		}
		i=0;
		%>
		4
	]
	var ques=[
		<%while(i<total)
		{ %>
			["<%= question[i] %>",
		     "<%=option1[i]%>",
		     "<%=option2[i]%>",
		     "<%=option3[i]%>",
		     "<%=option4[i]%>"
			],
		<% i++; }%>
		]; 
	<%i=0;%>
	function _(x){
		return document.getElementById(x);
	}
	function renderQuestion(){
		test = _("test");
		
		_("test_status").innerHTML = "Question "+(pos+1)+" of "+ques.length;
		quest = ques[pos][0];
		chA = ques[pos][1];
		chB = ques[pos][2];
		chC = ques[pos][3];
		chD=ques[pos][4];
		test.innerHTML = "<h3>"+quest+"</h3>";
		if(response[pos]==0)
		{
			test.innerHTML += "<input type='radio' name='choices' value='A' checked> "+chA+"<br>";
		}
		else
		{
			test.innerHTML += "<input type='radio' name='choices' value='A'> "+chA+"<br>";	
		}
		if(response[pos]==1)
		{
			test.innerHTML += "<input type='radio' name='choices' value='B' checked> "+chB+"<br>";
		}
		else
		{
			test.innerHTML += "<input type='radio' name='choices' value='B'> "+chB+"<br>";	
		}
		if(response[pos]==2)
		{
			test.innerHTML += "<input type='radio' name='choices' value='C' checked> "+chC+"<br>";
		}
		else
		{
			test.innerHTML += "<input type='radio' name='choices' value='C'> "+chC+"<br>";	
		}
		if(response[pos]==3)
		{
			test.innerHTML += "<input type='radio' name='choices' value='D' checked> "+chD+"<br><br>";
		}
		else
		{
			test.innerHTML += "<input type='radio' name='choices' value='D'> "+chD+"<br><br>";	
		}
		test.innerHTML += "<button class='button' onclick='left()'>Previous</button>";
		test.innerHTML += "<button class='button' onclick='right()'>Next</button>";
}
	
function checkAnswer(){
	choices = document.getElementsByName("choices");
	for(var i=0; i<choices.length; i++){
		if(choices[i].checked)
		{
			response[pos]=i;
			break;
		}
	}
}
function left()
{
	checkAnswer();
	if(pos==0)
	{
		pos=9;		
	}
	else{ pos=pos-1; }
	renderQuestion();
}
function right()
{
	checkAnswer();
	pos=(pos+1)%10;
	renderQuestion();
}
function finalSubmit()
{
	sessionStorage.removeItem("reloading");
	document.getElementById('response').value = response;
	return true;
}
	
function timeout()
{
	sessionStorage.removeItem("reloading");
	window.location.replace("../ResultServlet?response="+response);
}

window.addEventListener("load", renderQuestion, false);

window.onload = function() {
    var reloading = sessionStorage.getItem("reloading");
    if (reloading) {
    	
        timeout();
    }
    else{
    	sessionStorage.setItem("reloading", "true");
    }
}

</script>
</head>
<body>
	
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<h3><font color="grey">Temperory Institute of Technology</font></h3>
			</div>
			
		</div>
	</nav>
	<div style="text-align:right"><font color="blue" size="10">Time left = <span id="timer"></span></font></div>
	<div class='container'>
	<h1 id="test_status"></h1>
  	<div id="test" style="font-size: 20px;"></div><br>
  	<%
  		session.setAttribute("username", name);
  		session.setAttribute("subject", subject);
  		session.setAttribute("total", total);
  		
  	%>
  	<form onclick="finalSubmit()" method="get" action="../ResultServlet">
  	<input type="hidden" name="response" id="response" value="" />
  	<button class="button button2" type="submit">Final Submit</button>
  	</form>
		<script>
	document.getElementById('timer').innerHTML =
		  10 + ":" + 00;
		startTimer();

		function startTimer() {
		  var presentTime = document.getElementById('timer').innerHTML;
		  var timeArray = presentTime.split(/[:]+/);
		  var m = timeArray[0];
		  var s = checkSecond((timeArray[1] - 1));
		  if(s==59){m=m-1}
		  if(m<0){
			  alert('timer completed');
		  	  timeout();
		  }
		  
		  document.getElementById('timer').innerHTML =
		    m + ":" + s;
		  console.log(m)
		  setTimeout(startTimer, 1000);
		}

		function checkSecond(sec) {
		  if (sec < 10 && sec >= 0) {sec = "0" + sec}; // add zero in front of numbers < 10
		  if (sec < 0) {sec = "59"};
		  return sec;
		}
		
		
  </script>
  </div>
</body>
</html> 
