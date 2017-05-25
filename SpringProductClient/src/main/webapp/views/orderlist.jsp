<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order List</title>
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
	
		<h1>Order List</h1>
		<ol>
	
		<c:forEach var="order" items="${orders}">
			<li>
				Date: <c:out value="${order.orderDate}" /><br/>
				Person: <c:out value="${order.person.firstName}" /><br/>
				Orders:
				<table border ="1">
					<tr>
						<th>Product</th>
						<th>Quantity</th>
					</tr>
				
					<c:forEach var="orderline" items="${order.orderLines}">
					<tr>
   						<td><c:out value="${orderline.product.productName}"/></td>
   						<td><c:out value="${orderline.quantity}"/></td>
   					</tr>
					</c:forEach>
				
				</table>
				<br />
			</li>
		</c:forEach>

		</ol>
		
		<hr>
		<a href="/">Back Home</a>
	</div>
</body>
</html>