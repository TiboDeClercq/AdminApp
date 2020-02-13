
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CGC</title>
</head>
<body>
<%@ page import="beans.Student" %>
    <h2>To check your entered details please click on below link</h2>
    
     <% // lets fetch the data from html page %>
 <%   
    String n=request.getParameter("name");
    String f=request.getParameter("fname");
    String a=request.getParameter("address");
    String c=request.getParameter("city");
    String s=request.getParameter("state");
    String sx=request.getParameter("sex");
    String e=request.getParameter("email");
    String sb1=request.getParameter("subject1");
    String ub1=request.getParameter("ubord1");
   String hp=request.getParameter("hpersent");
    String hy=request.getParameter("hyear");
    String sb2=request.getParameter("subject2");
    String ub2=request.getParameter("ubord2");
    String ip=request.getParameter("ipersent");
    String iy=request.getParameter("iyear");
    
   // lets creat object of java beans
    
    Student p=new Student();
    
    // lets store the data inside object of bean using setter method
    
    p.setName(n);
    p.setFname(f);
    p.setAddress(a);
    p.setCity(c);
    p.setState(s);
    p.setSex(sx);
    p.setEmail(e);
    p.setSubject1(sb1);
    p.setUbord1(ub1);
    p.setHpersent(hp);
    p.setHyear(hy);
    p.setSubject2(sb2);
    p.setUbord2(ub2);
    p.setIpersent(ip);
    p.setIyear(iy);
    
 

   
    
    // lets store the object of bean inside session object
    session.setAttribute("rps", p);
    %>
    <a href='b.jsp'>Click Here</a>
    
    

</body>
</html>