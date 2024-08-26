<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResortBooking - Dashboard</title>
<style>

.navbar {
    background-color: #004080;
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 20px;
    position: relative;
}

.navbar-brand {
    font-size: 24px;
    font-weight: bold;
}

.navbar-links {
    list-style: none;
    display: flex;
    align-items: center;
}

.navbar-links li {
    margin-left: 20px;
}

.navbar-links a {
    color: #fff;
    text-decoration: none;
    font-size: 18px;
    transition: color 0.3s ease;
}

.navbar-links a:hover {
    color: #ffcc00;
}

/* Logout button styles */
.navbar-links .logout {
    background-color: #ffcc00;
    color: #004080;
    padding: 8px 16px;
    border-radius: 5px;
    font-weight: bold;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.navbar-links .logout:hover {
    background-color: #004080;
    color: #ffcc00;
    text-decoration: none;
}

.navbar-toggle {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.bar {
    height: 3px;
    width: 25px;
    background-color: #fff;
    margin: 4px 0;
    transition: all 0.3s ease;
}

/* Responsive Styles */
@media (max-width: 768px) {
    .navbar-links {
        position: absolute;
        top: 60px;
        right: 0;
        background-color: #004080;
        flex-direction: column;
        width: 100%;
        height: calc(100vh - 60px);
        justify-content: center;
        align-items: center;
        transform: translateX(100%);
        transition: transform 0.3s ease-in-out;
    }

    .navbar-links li {
        margin: 15px 0;
    }

    .navbar-toggle {
        display: flex;
    }

    .navbar-links.active {
        transform: translateX(0);
    }
}
</style>
</head>
<body>
    <nav class="navbar">
        <div class="navbar-brand">ResortBooking</div>
        <ul class="navbar-links" id="navbar-links">
            <li><a href="home.jsp">Home</a></li>
            <li><a href="gallery.jsp">Booking</a></li>
            <li><a href="facility.jsp">Facilities</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="Register.jsp" class="logout">Logout</a></li> <!-- Logout link -->
        </ul>
        <div class="navbar-toggle" id="mobile-menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </div>
    </nav>

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
