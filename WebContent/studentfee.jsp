<%@page import="beans.Fee"%>
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
            
            String rcp=request.getParameter("rcp");
            String name=request.getParameter("name");
            String roll=request.getParameter("roll");
            String fname=request.getParameter("fname");
            String dob=request.getParameter("dob");
            String year=request.getParameter("year");
            String branch=request.getParameter("branch");
            String sex=request.getParameter("sex");
            String email=request.getParameter("email");
            String contact=request.getParameter("contact");
            String amount=request.getParameter("amount");
            String dues=request.getParameter("dues");
            
            
            
            Fee p=new Fee();
            
            // lets store the data inside object of bean using setter method
            
            p.setRcp(rcp);
            p.setName(name);
            p.setRoll(roll);
            p.setFname(fname);
            p.setDob(dob);
            p.setYear(year);
            p.setBranch(branch);
            p.setSex(sex);
            p.setEmail(email);
            p.setContact(contact);
            p.setAmount(amount);
            p.setDues(dues);
            
            
         

           
            
            // lets store the object of bean inside session object
            session.setAttribute("rps", p);
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/itm","root","root");
            String query="insert into studentfee values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps=cn.prepareStatement(query);
            ps.setString(1,rcp);
            ps.setString(2,name);
            ps.setString(3,roll);
            ps.setString(4,fname);
            ps.setString(5,dob);
            ps.setString(6,year);
            ps.setString(7,branch);
            ps.setString(8,sex);
            ps.setString(9,email);
            ps.setString(10,contact);
            ps.setString(11,amount);
            ps.setString(12,dues);
           
            
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("ViewFee.jsp");   
            }
        %>
    </body>
</html>
