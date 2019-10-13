<pre><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script> 
function emailcheck(str) {
	var at="@"
	var dot="."
	var lat=str.indexOf(at)
	var lstr=str.length
	var ldot=str.indexOf(dot)
	if (str.indexOf(at)==-1){
	alert("Invalid E-mail ID1");
	return false;
	}
	else if  (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
	alert("Invalid E-mail ID2");
	return false;
	}
	else if  (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
	alert("Invalid E-mail ID3");
	return false;
	}
	else if  (str.indexOf(at,(lat+1))!=-1){
	alert("Invalid E-mail ID4");
	return false;
	}
	else if  (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
	alert("Invalid E-mail ID5");
	return false;
	}
	else if  (str.indexOf(dot,(lat+2))==-1){
	alert("Invalid E-mail ID6");
	return false;
	}
	else if  (str.indexOf(" ")!=-1){
	alert("Invalid E-mail ID7");
	return false;
	}
	}
function validate()
{ 
 var Cust_First_Name = document.form.Cust_First_Name.value;
 var Cust_Second_Name = document.form.Cust_Second_Name.value;
 var Cust_Email = document.form.Cust_Email.value;
 var Cust_DOB = document.form.Cust_DOB.value;
 var Country_Origin = document.form.Country_Origin.value;
 var password = document.form.password.value;
 var Cust_Password = document.form.Cust_Password.value;
 if (Cust_First_Name==null || Cust_First_Name=="")
 { 
 alert("Fist Name can't be blank"); 
 return false; 
 }
 else if (Cust_Second_Name==null || Cust_Second_Name =="")
 { 
 alert("Second Name can't be blank"); 
 return false; 
 }
 else if (Cust_Email==null || Cust_Email =="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (emailcheck(Cust_Email)==false)
 {
 return false;
 }
 else if (Cust_DOB==null || Cust_DOB =="")
 { 
 alert("Date of birth cannot be blank"); 
 return false; 
 }
 else if (Country_Origin ==null || Country_Origin  =="")
 { 
 alert("Country of Origin cannot be blank"); 
 return false; 
 }
 else if(password.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 }
 else if (password!= Cust_Password)
 { 
 alert("Confirm Password should match with the Password"); 
 return false; 
 } 
}
</script> 
</head>
<body>
<center><h2>This is our registeration page. (Page 2) </h2></center>
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
<table align="center">
 <tr>
 <td>First Name</td>
 <td><input type="text" name="Cust_First_Name" /></td>
 </tr>
 <tr>
 <td>Second Name</td>
 <td><input type="text" name="Cust_Second_Name" /></td>
 </tr>
 <tr>
 <td>Customer Email</td>
 <td><input type="text" name="Cust_Email" /></td>
 </tr>
 <tr>
 <td>Customer Date of Birth</td>
 <td><input type="text" name="Cust_DOB"></td>
 </tr>
 <tr>
 <td>Customer Country of Origin</td>
 <td><input type="text" name="Country_Origin" /></td>
 </tr>
 <tr>
  <td>Password</td>
 <td><input type="password" name="password" /></td>
 </tr>
 <tr>
 <td>Confirm Password</td>
 <td><input type="password" name="Cust_Password" /></td>
 </tr>
 <tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Register"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
</body>
</html>