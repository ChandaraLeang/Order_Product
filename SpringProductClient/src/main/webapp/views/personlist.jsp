<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Person List</title>
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
	
		<h1>Person List</h1>
			<table border="1">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>City</th>
					<th>State</th>
					<th>Zipcode</th>
					<th>Country</th>
					<th>Update</th>
				</tr>
			
				<c:forEach var="person" items="${persons}">
				<tr>
   					<td><c:out value="${person.firstName}"/></td>
   					<td><c:out value="${person.lastName}"/></td>
   					<td><c:out value="${person.email}"/></td>
   					<td><c:out value="${person.phone}"/></td>
   					<td><c:out value="${person.address.city}"/></td>
   					<td><c:out value="${person.address.state}"/></td>
   					<td><c:out value="${person.address.zipcode}"/></td>
   					<td><c:out value="${person.address.country}"/></td>
   					<td>
   					<form method="get" action="/editPerson">
   						<input type="hidden" name="id" value="${person.id}" />
   						<input type="submit" value="Edit" />
   					</form>   			
   				</td>			
   				</tr>
				</c:forEach>
			</table>
			<br/>
			<form method="get" action="/addPerson"><input type="submit" value="Add Person" /></form>
			<hr>
			<a href="/">Back Home</a>
	</div>
</body>
</html>