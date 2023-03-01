<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ActionChoose Page</title>
<style>
body {background-color: #e1e6ab;}
</style>  
</head>
<body>
<p style="text-align:center"> Welcome  <%=request.getAttribute("uname") %> </p><br>
<form method="post" action="reserve.jsp">
<input type="submit" value="ReserveTickets" name="ReserveTickets"/>
</form>
<form method="post" action="cancel.jsp">
<input type="submit" value="CancelTickets" name="CancelTickets"/>
</form>
<form method="post" action="logout">
<input type="submit" value="LogOut" name="LogOut"/>
</form>
</body>
