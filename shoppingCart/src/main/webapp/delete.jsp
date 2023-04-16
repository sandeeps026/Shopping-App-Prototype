<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url("h.jpg");
	display: flex;
}

fieldset {
	width: 600px;
	margin: 200px auto;
	display: flex;
	border: 3px solid darkblue;
}

legend {
	font-size: 25px;
	font-weight: 900;
	color: darkblue;
}

button:hover {
	color: antiquewhite;
	background-color: darkblue;
}
</style>
</head>
<body>
<fieldset>
		<legend>
			<i>SHOPPING CART</i>
		</legend>
	<form action="delete" method="post">
		<input type="number" name="id" placeholder="Enter existing ID">
		<br> <br> 
	<button>DELETE</button>
		</form>
	</fieldset>
</body>
</html>