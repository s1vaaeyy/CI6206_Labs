<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Hello World JSP Tutorial</title> 
</head>
<body>      
<%= "Hello World!" %> 
<br/>
The scriptlet contains Java code that is executed every time the JSP is invoked.
<br/>
<%     
System.out.println( "Getting the system date and time" );     
java.util.Date date = new java.util.Date(); 
%> 
Current Date and Time :  <%= date %> 

<br/>
<br/>
This is to show scriptlet can generate HTML output by using the "out" variable 
<br/>
<%    
System.out.println( "Getting the system date and time" );    
java.util.Date datee = new java.util.Date(); %> 
Current Date and Time : 
<% out.println( String.valueOf( datee )); %> 

<br/>
<br/>
The code below demonstrate a sample JSP "request"  to return  the IP address of the remote host connecting to the server. 
<%    
//out.println( date );     
out.println("<br>");     
out.println( "Remote host IP address: " );     
out.println( request.getRemoteHost()); 
%>
<br/>
<br/>

<%@ include file = "helloworld.jsp" %> 
<HTML><BODY> 
<%     
System.out.println( "Evaluating date now" );     
Date dateee = new Date(); 
%> 
Current Date and Time : <%= dateee %> 
</BODY></HTML>
<br/>
<br/>
The code below demonstrate how to draw table :
<br/>
<br/>
<TABLE BORDER=2> 
<%
for ( int i = 0; i < 10 ; i++ ) {
%>   
 <TR>
   <TD>Number</TD> 
   <TD> <%= i+1 %> </TD> 
 </TR> 
 <% 
 }  
 %> 
 </TABLE> 
</body> </html> 