<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CGC</title>
</head>
<body bgcolor="yellow">
<%@ page import="beans.Fee" %>
   
   <%
       // lets get the object of bean from session object
       
       Fee p=(Fee)session.getAttribute("rps");
   
    // lets fetch the data from beans object using getter method
    
    String rcp=p.getRcp();
    String name=p.getName();
    String roll=p.getRoll();
    String fname=p.getFname();
    String dob=p.getDob();
    String year=p.getYear();
    String branch=p.getBranch();
    String sex=p.getSex();
    String email=p.getEmail();
    String contact=p.getContact();
    String amount=p.getAmount();
    String dues=p.getDues();
    
    
   %>
   
   <fieldset>
   <legend><h3>Fee Details</h3></legend>
   <table>
   <tr><td>Receipt Number:</td>&nbsp<td><%=rcp%></td></tr>
   <tr><td>Name:</td>&nbsp<td><%=name%></td></tr>
   <tr><td>Roll:</td>&nbsp<td><%=roll%></td></tr>
   <tr><td>Father Name:</td>&nbsp<td><%=fname%></td></tr>
   <tr><td>D.O.B:</td>&nbsp<td><%=dob%></td></tr>
   <tr><td>Year:</td>&nbsp<td><%=year%></td></tr>
   <tr><td>Branch:</td>&nbsp<td><%=branch%></td></tr>
   <tr><td>Sex:</td>&nbsp<td><%=sex%></td></tr>
   <tr><td>Email:</td>&nbsp<td><%=email%></td></tr>
   <tr><td>Contact:</td>&nbsp<td><%=contact%></td></tr>
   <tr><td>Amount:</td>&nbsp<td><%=amount%></td></tr>
   <tr><td>Dues:</td>&nbsp<td><%=dues%></td></tr>
   </table>
   </fieldset><br>
   
   <br>
   <br>
   <input type="submit" onclick="window.print()" value="Print">&nbsp &nbsp <a href="index.html">Home</a>
   

   
 
   

</body>
</html>