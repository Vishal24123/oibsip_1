<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
 	<style>
body {background-color: #af9a52;}
</style>  
</head>
<body>
<div class="container">
  <h2>Details of the Jouney</h2>
  <form action="delete" method="post">
  
  <table class="table table-bordered">
    <tbody>
    	<tr>
        <td>From</td>
        <td> <%=request.getAttribute("froms")%> </td>
      </tr>
      <tr>
        <td>To</td>
        <td> <%=request.getAttribute("tos")%> </td>
      </tr>
      <tr>
        <td>Date</td>
        <td> <%=request.getAttribute("dates")%> </td>
      </tr>
      <tr>
        <td>Firstname</td>
        <td> <%=request.getAttribute("fname")%> </td>
      </tr>
   
      <tr>
        <td>Lastname</td>
        <td> <%=request.getAttribute("lname")%> </td>
      </tr>
      
      <tr>
        <td>E-mail</td>
        <td><%=request.getAttribute("email")%> </td>
      </tr>
      
      <tr>
        <td>Phone</td>
        <td> <%=request.getAttribute("phone")%></td>
      </tr>
      
       <tr>
        <td>Type of Class</td>
        <td> <%=request.getAttribute("classtype")%></td>
      </tr>
      
       <tr>
        <td>Address</td>
        <td> <%=request.getAttribute("address")%> </td>
      </tr>
      
      <tr>
        <td>PNR</td>
        <td><%=request.getAttribute("pnr")%><input type=hidden name="pnr" readonly value=<%=request.getAttribute("pnr")%>> </td>
      </tr>
      
      <tr>
        <td>Train Name</td>
        <td> <%=request.getAttribute("tname")%> </td>
      </tr>
      
      <tr>
        <td>Train Number</td>
        <td> <%=request.getAttribute("tnum")%> </td>
      </tr>
     </tbody>
  </table>
  <input type="submit" name="Delete"/>  
</div>
</form>
</body>
</html>