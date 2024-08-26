<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resort Booking Form</title>
    <link rel="stylesheet" type="text/css" href="css/book.css">
     <!-- Header -->
    <header>
        <%@ include file="header.jsp" %>
    </header>
</head>

<body>

   

    <!-- Form Container -->
    <div class="form-container">
        <h1>Resort Booking Form</h1>
        <form action="PersonController" method="POST">
            <!-- Guest Name -->
           
            <input type="hidden" name=person value=book>
            
            <label for="name">Guest Name:</label>
            <input type="text" id="name" name="name" required>

            <!-- Check-in Date -->
            <label for="cdate">Check-in Date:</label>
            <input type="date" id="cdate" name="cdate" required>

            <!-- Check-out Date -->
            <label for="odate">Check-out Date:</label>
            <input type="date" id="odate" name="odate" required>

            <!-- Room Type -->
            <label for="room">Room Type:</label>
            <select id="room" name="room" required>
                <option value="deluxe">Deluxe Suite</option>
                <option value="standard">Standard Room</option>
                <option value="family">Family Suite</option>
            </select>

            <!-- Booking Status -->
            <label for="status">Booking Status:</label>
            <select id="status" name="status" required>
                <option value="pending">Pending</option>
                <option value="confirmed">Confirmed</option>
                <option value="checked-in">Checked In</option>
                <option value="canceled">Canceled</option>
            </select>

            <!-- Payment Status -->
            <label for="payment">Payment Status:</label>
            <select id="payment" name="payment" required>
                <option value="paid">Paid</option>
                <option value="pending">Pending</option>
                <option value="not-paid">Not Paid</option>
            </select>

            <!-- Submit Button -->
            <button type="submit">Submit Booking</button>
        </form>
    </div>

    <!-- Optional: Include Sidebar or Additional Content -->
    <!-- <div class="dashboard-container">
        <!-- Sidebar -->
        <!-- Sidebar content here -->
    <!-- </div> -->
    
    <%@ include file="footer.jsp" %>
    

</body>
</html>
