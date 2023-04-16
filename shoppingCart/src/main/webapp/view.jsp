<%@page import="com.Shopping.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Product> products = (List<Product>) request.getAttribute("prod");
	%>
	<table>
		<th>ID</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Price</th>
		<th>Currency</th>
		<th>Quantity</th>
		<th>Image</th>
		<th>color</th>
		<th>delete</th>
		<th>edit</th>
		<%
		for (Product p : products) {
		%>
		<tr>
			<td><%=p.getId()%></td>
			<td>
			<%=p.getName()%></td>
			<td>
			<%=p.getGender()%></td>
			<td>
			<%=p.getPrice()%></td>
			<td>
			<%=p.getCurrency()%></td>
			<td>
			<%=p.getQuantity()%></td>
			<td>
			<%=p.getImg()%></td>
			<td>
			<%=p.getColor()%></td>
			<td>
			<a href="delete.jsp"<%=p.getId()%>">delete</a>
			</td>
			<td>
			<a href="update.jsp"<%=p.getId()%>">edit</a>
			</td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>