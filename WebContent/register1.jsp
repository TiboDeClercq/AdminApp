<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%	
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	int roll_no=Integer.parseInt(request.getParameter("roll_no"));
	String email=request.getParameter("email");
	long phn_no=Long.parseLong(request.getParameter("phn_no"));
	int semester=Integer.parseInt(request.getParameter("semester"));
	int y_o_a=Integer.parseInt(request.getParameter("y_o_a"));
	String course=request.getParameter("course");
	
	Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/itm","root","root");
	String query="insert into REGISTERATION values(?,?,?,?,?,?,?,?)";
	PreparedStatement pst =  con.prepareStatement(query);
	pst.setString(1, name);
	pst.setString(2, password);
	pst.setInt(3, roll_no);
	pst.setString(4, email);
	pst.setLong(5, phn_no);
	pst.setInt(6, semester);
	pst.setInt(7, y_o_a);
	pst.setString(8,course);
	
	
	
	pst.executeUpdate();
		//	out.println("Inserted succesfully"+nora);
			con.close();
			
%>
<jsp:forward page="feedback.jsp"/>
