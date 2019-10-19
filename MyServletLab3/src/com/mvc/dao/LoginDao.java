package com.mvc.dao;
 
import java.sql.Connection;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 import com.mvc.bean.LoginBean;
 import com.mvc.util.DBConnection;
 
 public class LoginDao {
 
	 public String authenticateUser(LoginBean loginBean)
 
	 {
 

		 String Cust_Email = loginBean.getCust_Email(); //Keeping user entered values in temporary variables.

		 String Cust_Password = loginBean.getCust_Password();
 

		 Connection con = null;
 
		 Statement statement = null;
 
		 ResultSet resultSet = null;
 

		 String userNameDB = "";
 
		 String passwordDB = "";
		 
		 String CustID_DB ="";
 

		 try
 
		 {
 
			 con = DBConnection.createConnection(); //establishing connection
 
			 statement = con.createStatement(); //Statement is used to write queries. Read more about it.
 
			 resultSet = statement.executeQuery("select Cust_Email,Cust_Password,Cust_ID from Customer_Details"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
 

			 while(resultSet.next()) // Until next row is present otherwise it return false
 
			 {
  
				 userNameDB = resultSet.getString("Cust_Email"); //fetch the values present in database
  
				 passwordDB = resultSet.getString("Cust_Password");
				 
				 CustID_DB = resultSet.getString("Cust_ID");
 
   
				 if(Cust_Email.equals(userNameDB) && Cust_Password.equals(passwordDB))
   
				 {
      
					 return "SUCCESS"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
   
				 }

			 }
			}
 
			 catch(SQLException e)
 
			 {
 
				 e.printStackTrace();
 
			 }
 
			 return "Invalid user credentials"; // Just returning appropriate message otherwise
 
		 }
	  

 }
	 