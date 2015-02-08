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
      <li><a class="active" href="http://www.free-css.com/">Home</a></li>
      <li><a href="http://www.free-css.com/">About</a></li>
      <li><a href="http://www.free-css.com/">Products</a></li>
      <li><a href="http://www.free-css.com/">Services</a></li>
      <li><a href="http://www.free-css.com/">Order</a></li>
    </ul>
  </div>
  <div id="banner">
    <h1>Your Company Name</h1>
  </div>
  <div id="side">
    <div id="navcontainer">
      <h2>Links</h2>
      <ul>
        <li><a href="http://www.free-css.com/">Snapp Happy</a></li>
        <li><a href="http://www.free-css.com/">TODC</a></li>
        <li><a href="http://www.free-css.com/">Andreas Viklund</a></li>
        <li><a href="http://www.free-css.com/">James Koster</a> </li>
        <li><a href="http://www.free-css.com/">CSS play</a></li>
        <li><a href="http://www.free-css.com/">Listamatic </a> </li>
      </ul>
      <h2>Archives</h2>
      <ul>
        <li><a href="http://www.free-css.com/">January 2007</a></li>
        <li><a href="http://www.free-css.com/">February 2007</a></li>
        <li><a href="http://www.free-css.com/">March 2007</a></li>
        <li><a href="http://www.free-css.com/">April 2007</a></li>
      </ul>
    </div>
    </div>
    </div>
    
	
<s:form action="">
		<table>
		<tr><td>Lead Master<td></tr>
		
		<tr><td><s:textfield id="firstname" name="firstName" label="FirstName"></s:textfield></td></tr>
		
		<tr><td><s:textfield id="lastname" name="lastName" label="LastName"></s:textfield></td></tr>
		<tr><td><s:textfield id="phoneno" name="phoneNo" label="PhoneNo"></s:textfield></td></tr>
		<tr><td><s:textfield id="date" name="date" label="Date"></s:textfield></td></tr>
		<tr><td><s:textfield id="sex" name="sex" label="Sex"></s:textfield></td></tr>
		<tr><td><s:textfield id="email" name="email" label="Email"></s:textfield></td></tr>
		<tr><td><s:textarea  name="address" label="Address"></s:textarea></td></tr>
		<tr><td><s:textfield id="city" name="city" label="City"></s:textfield></td></tr>
		<tr><td><s:textfield id="state" name="state" label="State"></s:textfield></td></tr>
		<tr><td><s:textfield id="pincode" name="pincode" label="Pincode"></s:textfield></td></tr>
		<tr><td><s:textfield id="empid" name="employeeId" label="Employee Id"></s:textfield></td></tr>
		<tr><td><s:textfield id="companyname" name="companyName" label="Company Name"></s:textfield></td></tr>
		<tr><td><s:textfield id="status" name="status" label="Status"></s:textfield></td></tr>
		<tr><td><s:textfield id="description" name="description" label="Description"></s:textfield></td></tr>
		<tr><td><s:submit></s:submit></td></tr>
		</table>
	</s:form>
	
</body>
</html>