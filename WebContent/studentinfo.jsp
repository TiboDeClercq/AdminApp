<%@page import="beans.Student"%>
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
            
            String name=request.getParameter("name");
            String fname=request.getParameter("fname");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String sex=request.getParameter("sex");
            String email=request.getParameter("email");
            String subject1=request.getParameter("subject1");
            String ubord1=request.getParameter("ubord1");
            String hpersent=request.getParameter("hpersent");
            String hyear=request.getParameter("hyear");
            String subject2=request.getParameter("subject2");
            String ubord2=request.getParameter("ubord2");
            String ipersent=request.getParameter("ipersent");
            String iyear=request.getParameter("iyear");
            String tc=request.getParameter("tc");
            
            
            Student p=new Student();
            
            // lets store the data inside object of bean using setter method
            
            p.setName(name);
            p.setFname(fname);
            p.setAddress(address);
            p.setCity(city);
            p.setState(state);
            p.setSex(sex);
            p.setEmail(email);
            p.setSubject1(subject1);
            p.setUbord1(ubord1);
            p.setHpersent(hpersent);
            p.setHyear(hyear);
            p.setSubject2(subject2);
            p.setUbord2(ubord2);
            p.setIpersent(ipersent);
            p.setIyear(iyear);
            
         

           
            
            // lets store the object of bean inside session object
            session.setAttribute("rps", p);
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/itm","root","root");
            String query="insert into studentinfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps=cn.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,fname);
            ps.setString(3,address);
            ps.setString(4,city);
            ps.setString(5,state);
            ps.setString(6,sex);
            ps.setString(7,email);
            ps.setString(8,subject1);
            ps.setString(9,ubord1);
            ps.setString(10,hpersent);
            ps.setString(11,hyear);
            ps.setString(12,subject2);
            ps.setString(13,ubord2);
            ps.setString(14,ipersent);
            ps.setString(15,iyear);
            ps.setString(16,tc);
            
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("b.jsp");   
            }
        %>
    </body>
</html>
