<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Person</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<div class="navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">PRODUCT ORDER</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/">Home<span class="sr-only">(current)</span></a></li>
					<li><a href="personlist">Person List<span class="sr-only">(current)</span></a></li>
					<li><a href="productlist">Product List<span class="sr-only">(current)</span></a></li>
					<li><a href="orderlist">Order List<span class="sr-only">(current)</span></a></li>
				</ul>
			</div>
		</div>
	
		<h1>Add New Person</h1>
		<form method="post" action="/addPerson">
			<table>
			<tr>
				<td>First Name </td><td><input type="text" name="firstName" /></td>
			</tr>
			
			<tr>
				<td>Last Name </td><td><input type="text" name="lastName" /></td>
			</tr>
			
			<tr>
				<td>Email </td><td><input type="text" name="email" /></td>
			</tr>
			
			<tr>
				<td>Phone </td><td><input type="text" name="phone" /></td>
			</tr>
			
			<tr>
				<td>Address </td><td></td>
			</tr>
			
			<tr>
				<td>City </td><td><input type="text" name="city" /></td>
			</tr>
			
			<tr>
				<td>State </td><td><input type="text" name="state" /></td>
			</tr>
			
			<tr>
				<td>Zipcode </td><td><input type="text" name="zipcode" /></td>
			</tr>
			
			<tr>
				<td>Country </td><td><input type="text" name="country" /></td>
			</tr>
			
			<tr>
				<td>Enable </td><td><input type="checkbox" name="enable" value="1"/></td>
			</tr>
			</table>
			<br />
			<input type="submit" value="Create Product" />		
		</form>
	</div>
</body>
</html>