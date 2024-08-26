<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" name="text/css" href="css/register.css">
</head>

<body>
<form action="PersonController" method="post">

<h3>Registration Form</h3>
<input type="hidden" name=person value="register">
<input type="text" name=name placeholder="Enter the Name" required="required"><br><br>
<input type="text" name=email placeholder="Enter the email" required="required"><br><br>
<input type="text" name=password placeholder="Enter the password" required="required"><br><br>
<select id="gender" name="gender" required>
                        <option value="" disabled selected>Select your gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                    <br><br>
<button type="submit">Register Now</button>
<button><a href="login.jsp">login</a></button>
</form>


</body>
</html>