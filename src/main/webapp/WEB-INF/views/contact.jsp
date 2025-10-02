<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | EstateFinders</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
		
		:root {
			            --primary-color: #2c3e50;
			            --secondary-color: #e74c3c;
			            --accent-color: #3498db;
			            --light-color: #ecf0f1;
			            --dark-color: #2c3e50;
			        }

			    body {
			      background-color: white;
			      font-family: Arial, sans-serif;
			      margin: 0;
			      padding: 0;
			    }
		       
		       /* Custom Navbar Styles */
		       .navbar {
		           background-color: var(--primary-color) !important;
		           padding: 15px 0;
		       }
		       
		       .navbar-brand {
		           display: flex;
		           align-items: center;
		           margin-left: 20px;
		       }
		       
		       .navbar-brand span {
		           font-size: 1.4rem;
		           font-weight: 700;
		           color: white;
		           letter-spacing: 0.5px;
		           margin-left: 10px;
		       }
		       
		       .navbar-nav {
		           margin-right: 20px;
		       }
		       
		       .nav-link {
		           color: white !important;
		           font-family: Verdana, sans-serif;
		           font-size: 1rem;
		           padding: 8px 15px;
		           transition: color 0.3s;
		       }
		       
		       .nav-link:hover {
		           color: var(--secondary-color) !important;
		       }
		       
		       .dropdown-menu {
		           border: none;
		           box-shadow: 0 5px 15px rgba(0,0,0,0.1);
		       }
		       
		       .dropdown-item {
		           padding: 8px 20px;
		       }
		       
		       .container {
		           max-width: 1200px;
		           margin: 0 auto;
		           padding: 0 20px;
		           width: 100%;
		       }
		       
		       .hero {
		           background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1560518883-ce09059eeffa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
		           background-size: cover;
		           background-position: center;
		           color: white;
		           text-align: center;
		           padding: 80px 20px;
		       }
		       
		       .hero h1 {
		           font-size: 2.5rem;
		           margin-bottom: 20px;
		       }
		       
		       .contact-section {
		           padding: 60px 0;
		       }
		       
		       .contact-container {
		           display: grid;
		           grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
		           gap: 30px;
		       }
		       
		       .contact-info {
		           background-color: white;
		           padding: 30px;
		           border-radius: 5px;
		           box-shadow: 0 5px 15px rgba(0,0,0,0.1);
		       }
		       
		       .contact-info h2 {
		           color: var(--primary-color);
		           margin-bottom: 20px;
		           font-size: 1.8rem;
		       }
		       
		       .info-item {
		           display: flex;
		           align-items: flex-start;
		           margin-bottom: 20px;
		       }
		       
		       .info-item i {
		           color: var(--secondary-color);
		           font-size: 20px;
		           margin-right: 15px;
		           margin-top: 5px;
		       }
		       
		       .info-content h3 {
		           color: var(--dark-color);
		           margin-bottom: 5px;
		       }
		       
		       .contact-form {
		           background-color: white;
		           padding: 30px;
		           border-radius: 5px;
		           box-shadow: 0 5px 15px rgba(0,0,0,0.1);
		       }
		       
		       .contact-form h2 {
		           color: var(--primary-color);
		           margin-bottom: 20px;
		           font-size: 1.8rem;
		       }
		       
		       .form-group {
		           margin-bottom: 20px;
		       }
		       
		       .form-group label {
		           display: block;
		           margin-bottom: 5px;
		           color: var(--dark-color);
		           font-weight: 500;
		       }
		       
		       .form-group input,
		       .form-group textarea,
		       .form-group select {
		           width: 100%;
		           padding: 12px;
		           border: 1px solid #ddd;
		           border-radius: 4px;
		           font-size: 16px;
		       }
		       
		       .form-group textarea {
		           height: 120px;
		           resize: vertical;
		       }
		       
		       .form-group select {
		           appearance: none;
		           background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
		           background-repeat: no-repeat;
		           background-position: right 10px center;
		           background-size: 1em;
		       }
		       
		       button[type="submit"] {
		           background-color: var(--secondary-color);
		           color: white;
		           border: none;
		           padding: 12px 25px;
		           font-size: 16px;
		           border-radius: 4px;
		           cursor: pointer;
		           transition: background-color 0.3s;
		           width: 100%;
		       }
		       
		       button[type="submit"]:hover {
		           background-color: #c0392b;
		       }
		       
		       .office-hours {
		           margin-top: 30px;
		       }
		       
		       .office-hours h3 {
		           color: var(--dark-color);
		           margin-bottom: 10px;
		       }
		       
		       .office-hours p {
		           margin-bottom: 5px;
		       }
		       
		       footer {
		           background-color: var(--primary-color);
		           color: white;
		           text-align: center;
		           padding: 30px 0;
		           margin-top: 60px;
		       }
		       
		       .social-links {
		           margin: 20px 0;
		       }
		       
		       .social-links a {
		           color: white;
		           margin: 0 10px;
		           font-size: 20px;
		           transition: color 0.3s;
		       }
		       
		       .social-links a:hover {
		           color: var(--secondary-color);
		       }
		       
		       /* Map Section */
		       .map-section {
		           padding: 40px 0;
		       }
		       
		       .map-container {
		           position: relative;
		           overflow: hidden;
		           padding-top: 56.25%; /* 16:9 Aspect Ratio */
		           border-radius: 8px;
		           box-shadow: 0 5px 15px rgba(0,0,0,0.1);
		           margin: 0 auto;
		           max-width: 1000px;
		       }
		       
		       .map-container iframe {
		           position: absolute;
		           top: 0;
		           left: 0;
		           width: 100%;
		           height: 100%;
		           border: 0;
		       }
		       
		       /* Responsive Adjustments */
		       @media (max-width: 992px) {
		           .hero {
		               padding: 60px 20px;
		           }
		           
		           .hero h1 {
		               font-size: 2.2rem;
		           }
		           
		           .contact-section {
		               padding: 40px 0;
		           }
		       }
		       
		       @media (max-width: 768px) {
		           .navbar-brand {
		               margin-left: 15px;
		           }
		           
		           .navbar-nav {
		               margin-right: 0;
		               padding: 10px 15px;
		           }
		           
		           .hero {
		               padding: 50px 15px;
		           }
		           
		           .hero h1 {
		               font-size: 1.8rem;
		           }
		           
		           .contact-container {
		               grid-template-columns: 1fr;
		               gap: 20px;
		           }
		           
		           .contact-info, .contact-form {
		               padding: 20px;
		           }
		           
		           .info-item {
		               flex-direction: column;
		           }
		           
		           .info-item i {
		               margin-bottom: 10px;
		           }
		           
		           footer {
		               padding: 25px 0;
		               margin-top: 40px;
		           }
		       }
		       
		       @media (max-width: 576px) {
		           .navbar-brand span {
		               font-size: 1.2rem;
		           }
		           
		           .hero h1 {
		               font-size: 1.5rem;
		           }
		           
		           .contact-info h2, 
		           .contact-form h2 {
		               font-size: 1.5rem;
		           }
		           
		           .form-group input,
		           .form-group textarea,
		           .form-group select {
		               padding: 10px;
		               font-size: 15px;
		           }
		           
		           button[type="submit"] {
		               padding: 10px 20px;
		           }
		       }
		   </style>
</head>
<body>

<!-- Navbar -->
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
	    <div class="container-fluid">
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/contact">
	        <img src="<c:url value='/resources/images/estate1.jpg'/>" alt="Logo" width="60" class="d-inline-block align-top">
	        <span>ESTATEFINDERS</span>
	      </a>
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarNavDropdown">
	        <ul class="navbar-nav ms-auto">
	          <li class="nav-item">
	            <a class="nav-link active" href="${pageContext.request.contextPath}/project" style="margin-right:30px;">Home</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${pageContext.request.contextPath}/about" style="margin-right:30px;">About Us</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${pageContext.request.contextPath}/register" style="margin-right:30px;">Login/Register</a>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" style="margin-right:30px;">Menu</a>
	            <ul class="dropdown-menu dropdown-menu-dark">
	              <li><h6 class="dropdown-header">Services</h6></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/buy">Buy</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/rent">Rent</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/commercial">Commercial</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/pg">PG/Hostel</a></li>
	              <li><hr class="dropdown-divider"></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/contact">Contact</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/adminlogin">Admin Login</a></li>
	            </ul>
	          </li>
	        </ul>
	      </div>
	    </div>
	  </nav>
<!-- Hero Section -->
<section class="hero">
    <div class="container">
        <h1>Contact Our Real Estate Team</h1>
        <p>We're here to help you find your dream home</p>
    </div>
</section>

<!-- Contact Section -->
<section class="contact-section">
    <div class="container contact-container">

        <!-- Contact Info -->
        <div class="contact-info">
            <h2>Get In Touch</h2>
            <p><i class="fas fa-map-marker-alt"></i> 123 EstateFinders Avenue, New York, NY 10001</p>
            <p><i class="fas fa-phone-alt"></i> (212) 555-1234</p>
            <p><i class="fas fa-envelope"></i> info@estatefinders.com</p>
        </div>

        <!-- Contact Form -->
        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <c:if test="${not empty successMessage}">
                <div class="alert alert-success">${successMessage}</div>
            </c:if>
            <form action="${pageContext.request.contextPath}/contact" method="post">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone">
                </div>
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <select id="subject" name="subject" required>
                        <option value="">Select a subject</option>
                        <option value="buying">I want to buy a property</option>
                        <option value="selling">I want to sell my property</option>
                        <option value="renting">I'm interested in renting</option>
                        <option value="valuation">Property valuation request</option>
                        <option value="general">General inquiry</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" required></textarea>
                </div>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>
</section>

<!-- Map Section -->
<section class="map-section">
    <div class="container">
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7499.022318892529!2d73.77854824131418!3d19.987050225656862!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb1abfce8b67%3A0x31f677d2506ffcb7!2sMumbai%20Naka%2C%20Renuka%20Nagar%2C%20Nashik%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1751941907516!5m2!1sen!2sin"
                allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</section>

<!-- Footer -->
<footer>
    <p>&copy; 2023 EstateFinders. All rights reserved.</p>
</footer>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
