package com.controller;


import java.util.ArrayList;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojos.EmployeeDb;

public class Login extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String username, password;
	@SuppressWarnings("rawtypes")
	public Map session;

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}

	ArrayList<EmployeeDb>  myList2 = new ArrayList<EmployeeDb>();

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		System.out.println("Inside Action Execute Login");
		Session session1 = HibernateUtils.getSession();
		//Transaction tx=session.beginTransaction();

		//criteria for checking login details
		Criteria crt2=session1.createCriteria(EmployeeDb.class);
		String username1=getUsername();
		String password1=getPassword();

		System.out.println("inside username");
		crt2.add(org.hibernate.criterion.Expression.eq("username",username1));
		crt2.add(org.hibernate.criterion.Expression.eq("password",password1));
		
		myList2 = (ArrayList<EmployeeDb>)crt2.list();
		
		System.out.println(myList2.size());
		if(myList2.size()==0)
		{
			addActionError("Username or password does not exist");
			return INPUT;
		}
		else 
			
		{

			//Session management
			session = ActionContext.getContext().getSession();
			session.put("username",username1);
			session.put("loggedIn",true);
			
		}
			
	return SUCCESS;
	}
	

	public ArrayList<EmployeeDb> getMyList2() {
		return myList2;
	}


	public void setMyList2(ArrayList<EmployeeDb> myList2) {
		this.myList2 = myList2;
	}



	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}
