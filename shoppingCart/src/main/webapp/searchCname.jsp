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
<form action="sc" method="post">
  
   <label>COLOR NAME:</label> <input type="text" name="cn"> <br>
			<br>
  <button>SEARCH</button>
		</form>
	</fieldset>
</html>
</body>