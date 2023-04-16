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
      fieldset{
        width: 600px;
        margin: 200px auto;
        display: flex;
        border: 3px solid darkblue;
      }
      legend{
        font-size: 25px;
        font-weight: 900;
        color: darkblue;
      }
      div {
        margin: 12px auto;
      }

      a {
        color: rgb(88, 16, 232);
        text-decoration: none;
      }
      a:hover {
        color: rgb(238, 15, 149);
      }
      h2 {
        border: 3px solid slateblue;
        margin: 40px auto;
        font-weight: 700;
        font-size: larger;
        font-style: italic;
        padding: 10px;
        border-radius: 20px;
        width: 220px;
      }
     
    </style>
  </head>
  <body>
   <fieldset>
    <legend><i>SHOPPING CART</i></legend>
    <div>
      <a href="add.jsp"><h2>ADD PRODUCTS</h2></a>

      <a href="view"><h2>VIEW PRODUCTS</h2></a>

      <a href="update.jsp"><h2>UPDATE PRODUCTS</h2></a>
    </div>
    <div>
      <a href="searchPname.jsp"><h2>SEARCH BY PRODUCT</h2></a>

      <a href="searchCname.jsp"><h2>SEARCH BY COLOR</h2></a>

      <a href="delete.jsp"><h2>DELETE PRODUCTS</h2></a>
    </div>
</fieldset>
  </body>
</html>