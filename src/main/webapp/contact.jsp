<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>

<style>
body {
    font-family: sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
}

.contact-container {
    max-width: 700px;
    margin: 40px auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
}

h1 {
    color: #333;
    text-align: center;
}

.contact-info {
    display: flex;
    justify-content: space-around;
    margin-bottom: 20px;
}

.contact-item h2 {
    color: #666;
    margin-bottom: 5px;
}

.contact-item p {
    margin: 0;
    color: #444;
}

.contact-form h2 {
    color: #333;
    margin-bottom: 15px;
}

.contact-form label {
    color: #666;
    margin-bottom: 5px;
    display: block;
}

.contact-form input, .contact-form textarea {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
}

.contact-form button {
    padding: 10px 15px;
    background-color: #333;
    color: #fff;
    border: none;
    cursor: pointer;
}

#formMessage {
    color: #e74c3c;
    margin-top: 10px;
    display: none;
}

</style>
<body>
 <div class="contact-container">
        <h1>Contact Us</h1>
        <p>If you have any questions or would like to make a reservation, please don't hesitate to reach out to us. We're here to help you have the perfect getaway at Paradise Resort!</p>
        
        <div class="contact-info">
            <div class="contact-item">
                <h2>Address</h2>
                <p>123 Beachside Avenue<br>
                   Tropical Island, Ocean 45678</p>
            </div>
            <div class="contact-item">
                <h2>Phone</h2>
                <p>+123 456 7890</p>
            </div>
            <div class="contact-item">
                <h2>Email</h2>
                <p>info@paradiseresort.com</p>
            </div>
        </div>
        
        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <form action="PersonController" method="post">
                <label for="name">Name</label>
                <input type="hidden" name=person value="contact">
                <input type="text" name=name required>
                
                <label for="email">Email</label>
                <input type="email"  name=email required>
                
                <label for="message">Message</label>
                <textarea id="message" name=message rows="5" required></textarea>
                
                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>
    <script>
    document.getElementById('contactForm').addEventListener('submit', function(event) {
        event.preventDefault();

        // Simple validation
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const message = document.getElementById('message').value.trim();
        const formMessage = document.getElementById('formMessage');

        if (name === "" || email === "" || message === "") {
            formMessage.style.display = "block";
            formMessage.textContent = "Please fill in all fields.";
        } else {
            formMessage.style.display = "block";
            formMessage.style.color = "#2ecc71";
            formMessage.textContent = "Message sent successfully!";
            
            // Reset the form
            document.getElementById('contactForm').reset();
        }
    });

    
    </script>
    <%@ include file="footer.jsp" %>
    
</body>
</html>