<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script> 
function validate()
{ 
 var Cust_Email = document.form.Cust_Email.value; 
 var Cust_Password = document.form.Cust_Password.value;
 
 if (Cust_Email==null || Cust_Email=="")
 { 
 alert("Cust_Email cannot be blank"); 
 return false; 
 }
 else if(Cust_Password==null || Cust_Password=="")
 { 
 alert("Cust_Password cannot be blank"); 
 return false; 
 } 
}
</script> 
</head>
<body>
<div style="text-align:center"><h1>This is our Login Page (Page 1)</h1> </div>
<br>
<form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
<!-- Do not use table to format fields. As a good practice use CSS -->
<table align="center">
 <tr>
 <td>Username</td>
 <td><input type="text" name="Cust_Email" /></td>
 </tr>
 <tr>
 <td>Password</td>
 <td><input type="password" name="Cust_Password" /></td>
 </tr>
 <tr> <!-- refer to the video to understand request.getAttribute() -->
 <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></span></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Login"></input><input type="reset" value="Reset">
 <input type="button" value="Register" name="Register" onclick="document.forms[0].action = 'Register.jsp';this.form.submit();" />
 </input>
 </td>
  </tr>
</table>
</form>
</body>
</html>