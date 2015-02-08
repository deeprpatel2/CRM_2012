<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="style.css" rel="stylesheet" type="text/css" />
<title>Reminder</title>
<link type="text/css" href="assets/css/overcast/jquery-ui-1.7.3.custom.css" rel="stylesheet" />	
	<script type="text/javascript" src="assets/js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery-ui-1.7.3.custom.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery-ui-timepicker-addon.js"></script>
	<script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script>
	<script type="text/javascript">
		$(function(){
		// Datepicker
			$('#date').datepicker();
		
		});
		</script>
		
</head>

<body>
<div id="container">
  <div id="top">
      
      
    <ul id="navPyra">
      <li><a class="active" href="">Home</a></li>
      <li><a href="">About</a></li>
      <li><a href="">Products</a></li>
      <li><a href="">Services</a></li>
      <li><a href="">Order</a></li>
    </ul>
  </div>
  <div id="banner">
    <h1>Your Company Name</h1>
  </div>
  <div id="side">
    <div id="navcontainer">
      <h2>Links</h2>
      <ul>
        <li><a href="">Snapp Happy</a></li>
        <li><a href="">TODC</a></li>
        <li><a href="">Andreas Viklund</a></li>
        <li><a href="">James Koster</a> </li>
        <li><a href="">CSS play</a></li>
        <li><a href="">Listamatic </a> </li>
      </ul>
      <h2>Archives</h2>
      <ul>
        <li><a href="">January 2007</a></li>
        <li><a href="">February 2007</a></li>
        <li><a href="">March 2007</a></li>
        <li><a href="">April 2007</a></li>
      </ul>
    </div>
    </div>
    </div>
    
	<div>
<s:form action="AddReminder">
		<table>
		<tr><td><h1>Reminder</h1><td></tr>
		
		<tr><td><s:textarea  name="notes" label="Notes"></s:textarea></td></tr>
		<tr><td><s:textfield name="contactId" label="ContactId "></s:textfield></td></tr>
		<tr><td><s:textfield name="leadId" label="LeadId"></s:textfield></td></tr>
		<tr><td><s:textfield id="date" name="date" label="Date"></s:textfield></td></tr>
		
		<tr><td><s:submit></s:submit></td></tr>
		
		</table>
	</s:form>
	</div>
	<br>
	<br>
	<font size="4" face="verdana" color="red" >Reminder Added Successfully !!!</font>
	
</body>
</html>