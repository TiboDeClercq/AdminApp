<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CGC</title>
</head>
<body bgcolor="greenyellow">
<%@ page import="beans.Student" %>
   
   <%
       // lets get the object of bean from session object
       
       Student p=(Student)session.getAttribute("rps");
   
    // lets fetch the data from beans object using getter method
    
    String name=p.getName();
    String fname=p.getFname();
    String address=p.getAddress();
    String city=p.getCity();
    String state=p.getState();
    String sex=p.getSex();
    String email=p.getEmail();
    String subject1=p.getSubject1();
    String ubord1=p.getUbord1();
    String hpersent=p.getHpersent();
    String hyear=p.getHyear();
    String subject2=p.getSubject2();
    String ubord2=p.getUbord2();
    String ipersent=p.getIpersent();
    String iyear=p.getIyear();
    
    
   %>
   
   <fieldset>
   <legend><h3>Personal Information</h3></legend>
   <table>
   <tr><td>Name:</td>&nbsp<td><%=name%></td></tr>
   <tr><td>Father Name:</td>&nbsp<td><%=fname%></td></tr>
   <tr><td>Address:</td>&nbsp<td><%=address%></td></tr>
   <tr><td>City:</td>&nbsp<td><%=city%></td></tr>
   <tr><td>State:</td>&nbsp<td><%=state%></td></tr>
   <tr><td>Sex:</td>&nbsp<td><%=sex%></td></tr>
   <tr><td>E-mail:</td>&nbsp<td><%=email%></td></tr>
   </table>
   </fieldset><br>
   <div>
   <fieldset>
  <legend><h3>Professional Information</h3></legend>
   <table>
   <tr><td>H.School Subject:</td>&nbsp<td><%=subject1%></td></tr>
   <tr><td>H.School Board:</td>&nbsp<td><%=ubord1%></td></tr>
   <tr><td>10th Marks(%):</td>&nbsp<td><%=hpersent%></td></tr>
   <tr><td>10th Passed Year:</td>&nbsp<td><%=hyear%></td></tr>
   <tr><td>Inter Subject:</td>&nbsp<td><%=subject2%></td></tr>
   <tr><td>Inter Board:</td>&nbsp<td><%=ubord2%></td></tr>
   <tr><td>12th Marks(%):</td>&nbsp<td><%=ipersent%></td></tr>
   <tr><td>12th Passed Year:</td>&nbsp<td><%=iyear%></td></tr>
   
   </table>
   </fieldset>
   </div>
   <br>
   <br>
   <input type="submit" onclick="window.print()" value="Print">&nbsp &nbsp<a href="studentfee.html">Fee Submit</a>
   

   
 
   </table>

</body>
</html>