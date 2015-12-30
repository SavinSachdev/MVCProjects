<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customize Pizza</title>
</head>
<body>
<h1> Make your Own Pizza</h1>
<form action="CustomizePizza" method="post">
 <p>
Crust : <select name="crust">
<c:forEach items="${crusts}" var="crust" varStatus="status" >
<option value="${status.index}">${crust.name },${crust.price}</option>
</c:forEach>
</select>
</p>  
<p>
Cheese : <input type="radio" name="cheese" value="cheese">Normal</input>
<input type="radio" name="cheese" value="nocheese">No Cheese</input>
</p>

<p>
Toppings :  <br />
<c:forEach items="${toppings}" var="topping">
 <input type="checkbox" name="toppings" value="${topping}">${topping }</input><br />
 </c:forEach>
</p>
<p><input type="submit" name="submit" value="Add Pizza" /></p>
</form>
</body>
</html>