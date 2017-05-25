<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	
		<h1>Product List</h1>
		
		<table border="1">
			<tr>
				<th>Product Name</th>
				<th>Type</th>
				<th>Price</th>
				<th>Order</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
	
			<c:forEach var="product" items="${products}">
			<tr>
   				<td><c:out value="${product.productName}"/></td>
   				<td><c:out value="${product.description}"/></td>
   				<td><c:out value="${product.price}"/></td>
  
   				<td>
   					<form method="post" action="/addOrderline">
   						<input type="hidden" name="productId" value="${product.id}" />
   						<input size="5" type="text" name="quantity" placeholder="Quantity" />
   						<input type="submit" value="Add to Order" /></form>
   				</td>
   			
   				<td>
   					<form method="get" action="/editProduct">
   						<input type="hidden" name="id" value="${product.id}" />
   						<input type="submit" value="Edit" />
   					</form>   			
   				</td>
   			
   				<td>
   					<form method="post" action="/removeProduct">
   						<input type="hidden" name="id" value="${product.id}" />
   						<input type="submit" value="Remove" />
   					</form>   			
   				</td>
   			</tr>
			</c:forEach>
		</table>
		<br/>
		<form method="get" action="/createProduct"><input type="submit" value="Create Product" /></form>
		<form method="get" action="/currentorder"><input type="submit" value="Order Cart" /></form>
		<hr>
		<a href="/">Back Home</a>
	</div>
</body>
</html>