<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%
String progname=request.getParameter("program");
String sem=request.getParameter("sem");

String s1=request.getParameter("s1");
String a1=request.getParameter("a1");
String name=request.getParameter("name");

String optradio1=request.getParameter("optradio1");
String optradio2=request.getParameter("optradio2");
String optradio3=request.getParameter("optradio3");
String optradio4=request.getParameter("optradio4");
String optradio5=request.getParameter("optradio5");
String optradio6=request.getParameter("optradio6");
String optradio7=request.getParameter("optradio7");
String optradio8=request.getParameter("optradio8");
String id=request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","cetpa");
String query="insert into STUD_FEEDBACK (PROGRAM,SEM,S1,A1,name,OPTRADIO1,OPTRADIO2,OPTRADIO3,OPTRADIO4,OPTRADIO5,OPTRADIO6,OPTRADIO7,OPTRADIO8,id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pst=con.prepareStatement(query);
pst.setString(1,progname );
pst.setString(2, sem);
pst.setString(3, s1);
pst.setString(4, a1);
pst.setString(5, name);
pst.setString(6, optradio1);
pst.setString(7, optradio2);
pst.setString(8, optradio3);
pst.setString(9, optradio4);
pst.setString(10, optradio5);
pst.setString(11, optradio6);
pst.setString(12, optradio7);
pst.setString(13, optradio8);
pst.setString(14, id);
pst.executeUpdate();
		out.println("Inserted succesfully");
		con.close();

%>
<jsp:forward page="insertionSuccess.jsp"></jsp:forward>