<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "itm";
String userid = "root";
String password = "root";
String name=request.getParameter("name");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<h1>Get Feedback Record</h1>
<table border="1" style="width:100%">
<tr>
<td>Program</td>
<td>Semester</td>
<td>Branch</td>
<td>Subject</td>
<td>Faculty Name</td>
<td>feedback1</td>
<td>feedback2</td>
<td>feedback3</td>
<td>feedback4</td>
<td>feedback5</td>
<td>feedback6</td>
<td>feedback7</td>
<td>feedback8</td>
<td>Id of Faculty</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from stud_feedback where name='"+name+"'  ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("PROGRAM") %></td>
<td><%=resultSet.getString("SEM") %></td>
<td><%=resultSet.getString("S1") %></td>
<td><%=resultSet.getString("A1") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("OPTRADIO1") %></td>
<td><%=resultSet.getString("OPTRADIO2") %></td>
<td><%=resultSet.getString("OPTRADIO3") %></td>
<td><%=resultSet.getString("OPTRADIO4") %></td>
<td><%=resultSet.getString("OPTRADIO5") %></td>
<td><%=resultSet.getString("OPTRADIO6") %></td>
<td><%=resultSet.getString("OPTRADIO7") %></td>
<td><%=resultSet.getString("OPTRADIO7") %></td>
<td><%=resultSet.getString("OPTRADIO8") %></td>
<td><%=resultSet.getString("id") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br><a href="AdminHome.jsp">ADMIN HOME</a>
</body>
</html>