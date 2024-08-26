<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" name="text/css" href="css/gallery.css">

</head>
<%@ include file="header.jsp" %>
<body>
 <header class="header">
        <h1>Our Rooms</h1>
        <p>Choose the perfect room for your stay</p>
    </header>

    <!-- Room Listings -->
    <div class="rooms-container">
        <!-- Room 1 -->
        <div class="room">
            <img src="https://cache.marriott.com/marriottassets/marriott/ATLXR/atlxr-exterior-6663-hor-clsc.jpg?interpolation=progressive-bilinear&" alt="Deluxe Suite">
            <div class="room-info">
                <h2>Deluxe Suite</h2>
                <p>Spacious and luxurious, with a stunning view of the ocean. Includes a king-size bed, private balcony, and a large bathroom with a jacuzzi.</p>
                <p class="price">$350 per night</p>
                <a href="booking.jsp" class="book-btn">Book Now</a>
            </div>
        </div>

        <!-- Room 2 -->
        <div class="room">
            <img src="https://www.diversetravel.co.uk/wp-content/uploads/2020/01/Main-pool-and-lounging-area.jpg" alt="Standard Room">
            <div class="room-info">
                <h2>Standard Room</h2>
                <p>Comfortable and cozy, perfect for a relaxing stay. Includes a queen-size bed, a private balcony, and a modern bathroom.</p>
                <p class="price">$150 per night</p>
                <a href="booking.jsp" class="book-btn">Book Now</a>
            </div>
        </div>

        <!-- Room 3 -->
        <div class="room">
            <img src="https://lp-cms-production.imgix.net/news/2018/01/1-Bedroom-Water-Retreat-with-Slide_Exterior-by-Mohamed-Aryf.jpg?auto=format&fit=crop&q=40&sharp=10&vib=20&ixlib=react-8.6.4" alt="Family Suite">
            <div class="room-info">
                <h2>Family Suite</h2>
                <p>Ideal for families, featuring two bedrooms, a living area, and a private terrace. Includes two queen-size beds and a spacious bathroom.</p>
                <p class="price">$500 per night</p>
                <a href="booking.jsp" class="book-btn">Book Now</a>
            </div>
        </div>
    </div>

   <%@ include file="footer.jsp" %>
   

</body>
</html>