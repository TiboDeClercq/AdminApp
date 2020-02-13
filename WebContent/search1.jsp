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
String roll_no=request.getParameter("roll_no");
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
<h1>Get Student Data</h1>
<table border="1">
<tr>
<td>ID</td>
<td>NAME</td>
<td>EMAIL</td>
<td>BRANCH</td>
<td>YEAR1</td>
<td>YEAR2</td>
<td>MOBILE</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addstudent where id="+roll_no+" ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("branch") %></td>
<td><%=resultSet.getString("year1") %></td>
<td><%=resultSet.getString("year2") %></td>
<td><%=resultSet.getString("mobile") %></td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
<br><br><a href="index.html">HOME</a>
</body>
</html>