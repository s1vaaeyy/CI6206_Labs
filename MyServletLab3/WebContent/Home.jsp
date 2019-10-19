<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
</head>
<body>
 
 <center><h2>Users Home Page</h2></center>
 Welcome <%=request.getAttribute("Cust_Email") %>
 <div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
 
 <b>User Login Successfully </b>
 <br></br>
 <b>Please <a href="https://krazytech.com/programs/a-login-application-in-java-using-model-view-controllermvc-design-pattern">log-in</a> to continue.</b>
 
 
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "tour_agency_schema";
String userId = "root";
String password = "admin";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Country_Name</b></td>
<td><b>Trip_Start_Date</b></td>
<td><b>Trip_End_Date</b></td>
<td><b>Itinerary_Type</b></td>
<td><b>Cost</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select Country_Name , Trip_Start_Date, Trip_End_Date, Itinerary_Type, Cost " + 
"from Itinerary_Details a " +
"INNER JOIN Country_Details b on  a.Itinerary_ID = b.Itinerary_ID " +
"INNER JOIN Itinerary_Type_Details c on  c.Itinerary_Type_ID = a.Itinerary_Type_ID " +
"INNER JOIN Package_Details d on  d.Itinerary_ID = a.Itinerary_ID; ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Country_Name") %></td>
<td><%=resultSet.getString("Trip_Start_Date") %></td>
<td><%=resultSet.getString("Trip_End_Date") %></td>
<td><%=resultSet.getString("Itinerary_Type") %></td>
<td><%=resultSet.getString("Cost") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
 
</body>
</html><br>