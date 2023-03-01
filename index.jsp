<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body {background-color: #667487;}
</style>  
</head>
<body>
	<p style="text-align:center"> Log In </p><br>
	<form method="post" action="login">
	<pre>
	<b>Email:	  <input type="email"  name="username" id="username" placeholder="Enter the email address"/></b><br>
	<b>Password: <input type="password" name="password" id="password" placeholder="Enter the password"/></b><br>
 	<input type="submit" value="Submit" name="submit"/>
 	</pre>
 	</form>
 	<div id="display"></div>
 	<script type="text/javascript">
 	var status=<%=request.getAttribute("status") %>
	if(status=="failed"){
	 document.getElementById('display').innerHTML ="<h1><center> Invalid Login Credentials</center></h1>";
 	}
	</script>
</body>
</html>