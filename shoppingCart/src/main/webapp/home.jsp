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
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
      }
      div{
        height: 100px;
        width: 180px;
        margin: 300px auto;
        
      }
      a {
        color: rgb(128, 75, 153);
        margin: 5px 10px;
        text-decoration: none;
      }
      a:hover{
        color: blueviolet;
      }
      h2 {
        font-weight: 800;
        font-size: 40px;
        padding: 10px;
        border: 3px solid darkcyan;
        border-radius: 20px;
        margin: auto;
      }
    </style>
  </head>
  <body>
    <div>
      <a href="admin.jsp"><h2>ADMIN</h2></a>

      <a href="user.jsp"><h2> USER</h2></a>
    </div>
  </body>
</html>