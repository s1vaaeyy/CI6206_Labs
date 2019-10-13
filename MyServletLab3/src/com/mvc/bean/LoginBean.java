package com.mvc.bean;
 
//As I have already told it contains only setters and getters
 
public class LoginBean
 {
 private String Cust_Email;
 private String Cust_Password;
 
public String getCust_Email() {
 return Cust_Email;
 }
public void setCust_Email(String Cust_Email) {
 this.Cust_Email = Cust_Email;
 }
 public String getCust_Password() {
 return Cust_Password;
 }
 public void setCust_Password(String Cust_Password) {
 this.Cust_Password = Cust_Password;
 }
 }