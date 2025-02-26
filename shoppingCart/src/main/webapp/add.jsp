<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
	color: blue;
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
		<form action="save" method="post">
			<label>NAME:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="name"> <br>
			<br> SELECT GENDER: <input type="radio" name="gender"
				value="male">Male <input type="radio" name="gender"
				value="fmale">Female <br>
			<br> <label>PRICE:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="number" name="price"><br>
			<br> <label> CURRENCY:</label> <input type="text"
				name="currency"><br>
			<br> <label> QUANTITY:</label>&nbsp; <input type="number"
				name="qnt"><br>
			<br> <label>COLOR:</label>  &nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="color"><br>
			<br> <label> IMAGE:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="img" placeholder="write the image link">
			<br>
			<br>
			<button>SAVE</button>
		</form>
		</fieldset>
</body>
</html>