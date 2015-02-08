<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="style.css" rel="stylesheet" type="text/css" />
<title>User Login</title>
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
 
  <div id="banner">
    <h1>Customer is the King</h1>
  </div>
 
    </div>
    	<div>
<s:form action="login.action">
		<table align="center">
		<tr><td><h1>Login</h1><td></tr>
		<tr><td><s:textfield id="username" name="userName" label="UserName"></s:textfield></td></tr>
		<tr><td><s:password id="password" name="password" label="Password"></s:password></td></tr>
		
		<tr><td><s:submit></s:submit></td></tr>
		</table>
	</s:form>
	</div>
	
</body>
</html>