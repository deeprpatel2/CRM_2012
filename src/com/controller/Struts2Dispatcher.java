package com.controller;



import javax.servlet.FilterConfig;
import javax.servlet.ServletException;

import org.apache.struts2.dispatcher.FilterDispatcher;
import org.hibernate.HibernateException;



public class Struts2Dispatcher extends FilterDispatcher{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		super.init(filterConfig);//this line initializes struts
		try {
			System.out.print("Struts2Dispatcher");
			HibernateUtils.createSessionFactory();
			
		} catch (HibernateException e) {
			System.out.println("This isn't working");
			throw new ServletException(e);
		}

	}

}

