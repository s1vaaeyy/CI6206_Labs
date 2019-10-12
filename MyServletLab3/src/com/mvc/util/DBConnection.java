//DBConnection.java
package com.mvc.util;
 
import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBConnection {
 
 public static Connection createConnection()
 {
 Connection con = null;
 String url = "jdbc:mysql://localhost:3306/tour_agency_schema"; //MySQL URL followed by the database name
 String username = "root"; //MySQL username
 String password = "admin"; //MySQL password
 System.out.print("Sucess1!!!");
 try 
 {
 try 
 {
 Class.forName("com.mysql.jdbc.Driver"); //loading MySQL drivers. This differs for database servers 
 System.out.print("Sucess2!!!");
 } 
 catch (ClassNotFoundException e)
 {
 e.printStackTrace();
 System.out.print("Sucess3!!!");
 }
 
 con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
 System.out.println("Printing connection object "+con);
 System.out.print("Sucess4!!!");

 } 
 catch (Exception e) 
 {
 e.printStackTrace();
 }
 
 return con; 
 }
}