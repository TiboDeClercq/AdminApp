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
<h1>Get Fee Details</h1>
<table border="1">
<tr>
<td>Receipt No</td>
<td>Name</td>
<td>Roll No</td>
<td>Fname</td>
<td>DOB</td>
<td>Year</td>
<td>Branch</td>
<td>Sex</td>
<td>Email</td>
<td>Contact</td>
<td>Amount</td>
<td>Dues Fee</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from studentfee where roll="+roll_no+" ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("receipt") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("roll") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("year") %></td>
<td><%=resultSet.getString("branch") %></td>
<td><%=resultSet.getString("sex") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><%=resultSet.getString("dues") %></td>
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