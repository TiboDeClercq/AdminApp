<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%	 String Username=request.getParameter("Username");
   String Password=request.getParameter("Password");
   
   Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/itm","root","root");
	
	String query="select * from REGISTERATION where NAME=? AND PASSWORD=?";
	PreparedStatement pst=con.prepareStatement(query);
	pst.setString(1,Username);
	pst.setString(2,Password);
	ResultSet rs=pst.executeQuery();
	
while(rs.next()){
			%>	
<jsp:forward page="stud_feedback.jsp"/>

<%	
	}
	%>
<%
HttpSession ses=request.getSession();
ses.setAttribute("errorMessage", "Invalid user or password");
		
%>
<jsp:forward page="registerform.jsp"/>

<%con.close();
rs.close(); %>
	