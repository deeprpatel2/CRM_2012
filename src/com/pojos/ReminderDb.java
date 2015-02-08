package com.pojos;

import java.util.Date;

public class ReminderDb {
	
	private int reminderId,contactId,leadId;
	private String notes;
	private Date date;
	public int getReminderId() {
		return reminderId;
	}
	public void setReminderId(int reminderId) {
		this.reminderId = reminderId;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public java.util.Date getDate() {
		return date;
	}
	public void setDate(java.util.Date date) {
		this.date = date;
	}
	public int getLeadId() {
		return leadId;
	}
	public void setLeadId(int leadId) {
		this.leadId = leadId;
	}
	
	
	

}
