<%@page import="com.project.beans.booking"%>
<%@page import="com.project.dao.SqlQueries"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp" %>


<link rel="stylesheet" name="text/css" href="css/update.css">



</head>

<body>
<br>
<br>
<br>
<div class="form-container">
        <h1>Resort update Form</h1>
        <form action="PersonController" method="POST">
            <!-- Guest Name -->
                <input type="hidden" name=person value="update">
           
 	<input type="hidden" name=id value="<%= request.getParameter("id")%>"><br>
            
            <label for="name">Guest Name:</label>
            <input type="text" name=name id="name" value="<%= request.getParameter("name")%>" required>

            <!-- Check-in Date -->
            <label for="cdate">Check-in Date:</label>
        <input type="text" name=cdate value="<%=request.getParameter("cdate") %>"><br>

            <!-- Check-out Date -->
            <label for="odate">Check-out Date:</label>
        <input type="text" name=odate value="<%=request.getParameter("odate") %>"><br>

            <!-- Room Type -->
            <label for="room">Room Type:</label>
            <select id="room" name="room" value="<%=request.getParameter("room") %>">
                <option value="deluxe">Deluxe Suite</option>
                <option value="standard">Standard Room</option>
                <option value="family">Family Suite</option>
            </select>

            <!-- Booking Status -->
            <label for="status">Booking Status:</label>
            <select id="status" name="status" value="<%= request.getParameter("status")%>"  required>
                <option value="pending">Pending</option>
                <option value="confirmed">Confirmed</option>
                <option value="checked-in">Checked In</option>
                <option value="canceled">Canceled</option>
            </select>

            <!-- Payment Status -->
            <label for="payment">Payment Status:</label>
            <select id="payment" name="payment"  value="<%=request.getParameter("payment") %>"    required>
                <option value="paid">Paid</option>
                <option value="pending">Pending</option>
                <option value="not-paid">Not Paid</option>
            </select>

            <!-- Submit Button -->
            <button type="submit">update Detail</button>
        </form>
    </div>
                                   
         <%@ include file="footer.jsp" %>
                                  
</body>
</html>