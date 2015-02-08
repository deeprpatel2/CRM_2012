package com.controller;
import java.util.*;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.opensymphony.xwork2.ActionSupport;
import com.pojos.ReminderDb;

@SuppressWarnings("serial")
public class AddReminder extends ActionSupport {
	private String notes;
	private int contactId,reminderId,leadId;
	private Date date;
	
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getReminderId() {
		return reminderId;
	}
	public void setReminderId(int reminderId) {
		this.reminderId = reminderId;
	}
	public int getLeadId() {
		return leadId;
	}
	public void setLeadId(int leadId) {
		this.leadId = leadId;
	}
	
	
	public String execute(){
		try{
			
		Session session = HibernateUtils.getSession();
		Transaction tx= session.beginTransaction();
		
		ReminderDb p1= new ReminderDb();
		p1.setContactId(contactId);
		p1.setDate(date);
		p1.setNotes(notes);
		p1.setLeadId(leadId);
		p1.setReminderId(reminderId);

		session.save(p1);
		
		tx.commit();
		
		
			}catch(Exception ex){
				ex.printStackTrace();
				}
		return INPUT;
			}
	
		

}
