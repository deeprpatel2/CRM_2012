package com.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {
	private static SessionFactory sessionFactory;
	
	public static void createSessionFactory() {
		
		sessionFactory = new Configuration().configure().buildSessionFactory();
		System.out.println("HibernateUtils-->createSession()");
		
	}

	public static Session getSession() {
		System.out.println("HibernateUtils-->getSession()");
		return sessionFactory.openSession();
	}

}
