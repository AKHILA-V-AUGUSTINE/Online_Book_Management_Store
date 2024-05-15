<%@ include file="Admin/HeaderContent.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="center">
    <h1>Contact Us</h1>
    <p>If you have any questions or inquiries, please feel free to contact us:</p>
    
    <ul>
        <li>Email: info@yourwebsite.com</li>
        <li>Phone: +123-456-7890</li>
        <li>Address: 123 Main Street, City, Country</li>
    </ul>
    
    <p>You can also reach out to us through the form below:</p>
    
    <form action="/contact" method="get">
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="email">Your Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="message">Your Message:</label><br>
        <textarea id="message" name="message" rows="4" required></textarea><br>
        
        <button type="submit">Send Message</button>
    </form>
</div>
</body>
</html>
<%@ include file="Admin/FooterContent.jsp"%>
