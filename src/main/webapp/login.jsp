<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/login1.css">

</head>
<body>
<form action="PersonController" method="post">

<h3>Login Form</h3>
<input type="hidden" name=person value="login">
<input type="text" name=email placeholder="Enter the email" required="required"><br><br>
<input type="text" name=password placeholder="Enter the password" required="required"><br><br>

<button type="submit">Login Now</button>
<button><a href="Register.jsp">Register</a></button>







</form>
</body>
</html>