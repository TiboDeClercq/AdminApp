<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            String email=request.getParameter("email");
            String name=request.getParameter("name");
            String password=request.getParameter("password");
            String password1=request.getParameter("password");
            String date=request.getParameter("dob");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/itm","root","root");
            String query="insert into signup values(?,?,?,?,?)";
            PreparedStatement ps=cn.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,name);
            ps.setString(3,password);
            ps.setString(4,password1);
            ps.setString(5,date);
            
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                %>
                <jsp:forward page="index.html"></jsp:forward>
             <%   
            }
        %>
    </body>
</html>
