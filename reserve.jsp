<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Reserve Tickets</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
  	<style>
body {background-color: #af7952;}
</style>  
</head>
<script type="text/javascript">
function func(){
	
  	var dropdown = document.getElementById("train_number");
    var selection = dropdown.value;
  	console.log(selection);
    var trainTextBox = document.getElementById("train_name");
    trainTextBox.value = selection;
    var trn_no = dropdown.options[dropdown.selectedIndex].text;
    var trainnumber = document.getElementById("trn_no");
    trainnumber.value=trn_no;
}
</script>

<body>
	<div class="container" id="cont">
  	<h2>Please enter the following details</h2>
  	<form method="post" action="reserve">
  	<input type="hidden" id="trn_no" name="trn_no" readonly>
  	<table class="table table-bordered">
    <tbody>       
   
      <tr>
        <td>Firstname</td>
        <td> <input type="text" id="fname" name="fname"/> </td>
      </tr>
   
      <tr>
        <td>Lastname</td>
        <td> <input type="text" id="lname" name="lname"/> </td>
      </tr>
      
      <tr>
        <td>E-mail</td>
        <td> <input type="email" id="email" name="email"/> </td>
      </tr>
             
      <tr>
        <td>Phone</td>
        <td> <input type="text" id="phone"name="phone" pattern='^\+?\d{0,13}' title='Phone Number (Format: +9 99999-99999)'/></td>
      </tr>
      
      <tr>
        <td>Address</td>
        <td> <input type="text" id="addr" name="addr"/> </td>
      </tr>
      
      <tr>
      <td>Train Number</td>
        <td> <label for="train_number"></label>
        <select id="train_number" onchange="func()">
            <option value="Kittur Express">TR-01</option>
            <option value="Namma Metro">TR-02</option>
            <option value="Nimma Metro">TR-03</option>
            <option value="Shatabdi">TR-04</option>
            <option value="Rayana Express">TR-05</option>
            <option value="Manatee">TR-06</option>
            <option value="Pasco">TR-07</option>
            <option value="Pinellas">TR-08</option>
            <option value="Polk">TR-09</option>
            <option value="Sarasota">TR-10</option>
        </select> </td>
      </tr>
      
      <tr>
      <td>Train Name</td>
        <td> <input type="text" id="train_name" name="train_name" readonly= ></td>
      </tr>
      
       <tr>
        <td>Type of Class</td>
        <td> <label for="type"></label>
 	   	   <select id="type" name="type">
    	   <option value="A/C Class">A/C Class</option>
    	   <option value="Non A/C class">Non A/C class</option>
    	   </select>
       </td>
      </tr>
            
       <tr>
        <td>From</td>
        <td> <input type="text" id="froms" name="froms"/> </td>
      </tr>
      
      <tr>
        <td>To</td>
        <td> <input type="text" id="tos" name="tos"/> </td>
      </tr>
      
      <tr>
        <td>Date</td>
        <td> <input type="date" id="dates" name="dates"/> </td>
      </tr>
      
    </tbody>
  </table>
 <p style="text-align:center"> <a href="action.jsp">Back</a>
 <p style="text-align:center"> <input type="reset" value="Clear Form" /> </p>
 <p style="text-align:center"> <input type="submit" value="Book Tickets"/>  </p>
 
 </form>
 </div>

</body>
</html>