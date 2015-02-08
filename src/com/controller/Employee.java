package com.controller;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.opensymphony.xwork2.ActionSupport;
import com.pojos.EmployeeDb;

@SuppressWarnings("serial")

public class Employee extends ActionSupport {
	
	private String name,emailId,username,password,firstName,middleName,lastName  ;
	
	private int designationId,mobileNo;
 	private Date date;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getDesignationId() {
		return designationId;
	}
	public void setDesignationId(int designationId) {
		this.designationId = designationId;
	}
	public int getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(int mobileNo) {
		this.mobileNo = mobileNo;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	public String execute(){
		try{
			System.out.println("execute");
		Session session = HibernateUtils.getSession();
		Transaction tx= session.beginTransaction();
		
		/*ReminderDb p1= new ReminderDb();
		p1.setContactId(contactId);
		p1.setDate(date);
		p1.setNotes(notes);

		session.save(p1);
*/	EmployeeDb s1=new EmployeeDb();
	
	s1.setEmailId(emailId);
	s1.setDesignationId(designationId);
	s1.setUsername(username);
	s1.setPassword(password);
	s1.setFirstName(firstName);
	s1.setMiddleName(middleName);
	s1.setLastName(lastName);
	s1.setMobileNo(mobileNo);
	s1.setDate(date);
	
	session.save(s1);
		tx.commit();
		
			}catch(Exception ex){
				ex.printStackTrace();
				}
		return SUCCESS;
			}
		

}



