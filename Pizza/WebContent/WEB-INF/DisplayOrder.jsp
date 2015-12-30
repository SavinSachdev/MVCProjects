<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>
<h1>Your Order is !!</h1>

<table>
<tr>
<th>Pizza</th><th>Quantity</th><th>Price</th>
</tr>
<c:forEach items="${order.pizzas}" var="pizza">
<tr>
<td>${pizza.crust.name},<c:if test="${pizza.cheese}">Normal Cheese</c:if><c:forEach items="${pizza.toppings}" var="topping">
				, ${topping}
	</c:forEach>
	<td style="border: solid black 1px;"> ${pizza.quantity} </td>
	<td> ${pizza.price} </td>
	</tr>
</c:forEach>
	
	

</table>
<p >
Total: ${order.price} 
</p>
</body>
</html>