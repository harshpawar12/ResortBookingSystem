<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>

<link rel="stylesheet" name="text/css" href="css/facility.css">

<body>
<main class="facilities">
        <section class="facility">
            <div class="facility-image">
                <img src="https://th.bing.com/th/id/OIP.A1G7HLW9O5gRcn5_LQHQSAHaFj?rs=1&pid=ImgDetMain" alt="Spa & Wellness">
            </div>
            <div class="facility-info">
                <h2>Spa & Wellness</h2>
                <p>Rejuvenate your senses with our top-notch spa services, including massages, facials, and more.</p>
            </div>
        </section>

        <section class="facility reverse">
            <div class="facility-image">
                <img src="https://th.bing.com/th/id/OIP.-2XuFPyx2jQikHQmypuPMgHaGK?rs=1&pid=ImgDetMain" alt="Infinity Pool">
            </div>
            <div class="facility-info">
                <h2>Infinity Pool</h2>
                <p>Relax by the infinity pool with stunning views of the ocean, complete with a poolside bar.</p>
            </div>
        </section>

        <section class="facility">
            <div class="facility-image">
                <img src="https://th.bing.com/th/id/OIP.kP6Z0-_Fj4PkocXJFjLvRAHaE7?rs=1&pid=ImgDetMain" alt="Gourmet Dining">
            </div>
            <div class="facility-info">
                <h2>Gourmet Dining</h2>
                <p>Savor exquisite cuisine prepared by our world-renowned chefs in a variety of elegant settings.</p>
            </div>
        </section>

        <section class="facility reverse">
            <div class="facility-image">
                <img src="https://th.bing.com/th/id/OIP.Ufjy8Hz4von83cyJHev_awHaE8?rs=1&pid=ImgDetMain" alt="Fitness Center">
            </div>
            <div class="facility-info">
                <h2>Fitness Center</h2>
                <p>Stay fit during your stay with our state-of-the-art gym facilities, open 24/7.</p>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="resort-footer">
        <div class="footer-content">
            <p>© 2024 ResortBooking. All Rights Reserved.</p>
            <p>
                <a href="#">Privacy Policy</a> |
                <a href="#">Terms of Service</a> |
                <a href="#contact">Contact Us</a>
            </p>
        </div>
    </footer>

    <script>
        // Mobile menu toggle script
        const mobileMenu = document.getElementById('mobile-menu');
        const navbarLinks = document.getElementById('navbar-links');

        mobileMenu.addEventListener('click', function() {
            navbarLinks.classList.toggle('active');
        });
    </script>
</body>
</html>