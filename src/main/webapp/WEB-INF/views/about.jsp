<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>About Us | EstateFinders</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

  <style>
    :root {
      --primary-color: #2c3e50;
      --secondary-color: #e74c3c;
      --light-color: #ecf0f1;
    }
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      padding-top: 70px;
    }
    .navbar {
      background-color: var(--primary-color) !important;
      padding: 10px 0;
      position: fixed;
      width: 100%;
      top: 0;
      z-index: 1000;
    }
    .navbar-brand span {
      font-size: 1.4rem;
      font-weight: 700;
      color: white;
      margin-left: 10px;
    }
    .nav-link {
      color: white !important;
      font-family: Verdana, sans-serif;
      font-size: 1rem;
      padding: 8px 15px !important;
    }
    .nav-link:hover {
      color: var(--secondary-color) !important;
    }
    .hero-image {
      width: 100%;
      max-height: 600px;
      object-fit: cover;
    }
    .content-image {
      width: 100%;
      max-height: 400px;
      object-fit: cover;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/about">
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

  <!-- Content -->
  <!-- Rest of your content -->
     <div class="container mt-4">
         <!-- Hero Image -->
         <div class="row">
             <div class="col-12">
                 <img src="<c:url value='/resources/images/ab copy.jpg'/>" alt="About" class="hero-image img-fluid rounded">
             </div>
         </div>
         
         <h2 class="text-center my-5">About Us</h2>
         
         <!-- First Content Section -->
         <div class="row align-items-center mb-5">
             <div class="col-md-6 mb-4 mb-md-0">
                 <img src="<c:url value='/resources/images/rrr.jpeg'/>" alt="About" class="content-image img-fluid rounded">
             </div>
             <div class="col-md-6">
                 <p class="lead">
                     Welcome to Estatefinders, where your dream home becomes reality. Based in the heart of Nashik, we specialize in connecting people with properties that match their lifestyle, aspirations, and budget.
                     At Estatefinders, we believe that finding the perfect home should be an exciting journey, not a stressful chore. Based in the vibrant city of Nashik, we are dedicated to helping you discover properties that align with your dreams, lifestyle, and financial goals.
                 </p>
             </div>
         </div>
         
         <h2 class="text-center my-5">Who We Are</h2>
         
         <!-- Second Content Section -->
         <div class="row align-items-center mb-5">
             <div class="col-md-6 order-md-1 mb-4 mb-md-0">
                 <img src="<c:url value='/resources/images/eeee.jpeg'/>" alt="About" class="content-image img-fluid rounded">
             </div>
             <div class="col-md-6 order-md-2">
                 <p class="lead">
                     We are a passionate team of real estate professionals committed to delivering exceptional service and personalized experiences. With deep roots in the local market and a forward-thinking approach, we blend traditional values with modern technology to simplify your property journey.
                     At Estatefinders, we're more than just real estate agents—we're your trusted partners in navigating Nashik's dynamic property market. Our team of passionate, experienced professionals brings together local insight, innovative tools, and unwavering dedication to make your property journey seamless and rewarding.
                 </p>
             </div>
         </div>
         
         <!-- Mission Section -->
         <div class="row mb-5">
             <div class="col-12">
                 <h2 class="mb-4">Our Mission</h2>
                 <p class="lead">
                     To empower individuals and families by helping them find the perfect space to live, work, and grow. We believe in transparency, integrity, and building lasting relationships through trust and results. At Estatefinders, we empower individuals and families to find their perfect space—a place where memories are made, businesses thrive, and futures are built. Our commitment goes beyond transactions; we're here to foster trust, transparency, and lasting relationships at every step.
                 </p>
             </div>
         </div>
         
         <!-- What We Offer Section -->
         <div class="row mb-5">
             <div class="col-md-6">
                 <h2 class="mb-4">What we offer</h2>
                 <ul class="lead">
                     <li>Residential and commercial property sales</li>
                     <li>Rental and leasing services</li>
                     <li>Property management and investment consulting</li>
                     <li>Market insights and legal guidance</li>
                 </ul>
             </div>
             
             <!-- Why Choose Us Section -->
             <div class="col-md-6">
                 <h2 class="mb-4">Why choose us</h2>
                 <ul class="lead">
                     <li>Local expertise with global standards</li>
                     <li>End-to-end support from search to settlement</li>
                     <li>A curated portfolio of verified listings</li>
                     <li>Responsive service and honest advice</li>
                 </ul>
             </div>
         </div>
     </div>
  <!-- Footer -->
  <footer class="bg-dark text-white py-4 mt-5">
    <div class="container">
      <div class="row">
        <!-- Company -->
        <div class="col-md-4">
          <h5>EstateFinders</h5>
          <p>Find your dream home with our premium real estate services across India.</p>
          <div>
            <a href="#" class="text-white me-2"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="text-white me-2"><i class="fab fa-twitter"></i></a>
            <a href="#" class="text-white me-2"><i class="fab fa-instagram"></i></a>
            <a href="#" class="text-white me-2"><i class="fab fa-linkedin-in"></i></a>
          </div>
        </div>
        <!-- Links -->
        <div class="col-md-2">
          <h5>Quick Links</h5>
          <ul class="list-unstyled">
            <li><a href="<c:url value='/project'/>" class="text-white">Home</a></li>
            <li><a href="<c:url value='/contact'/>" class="text-white">Contact</a></li>
            <li><a href="<c:url value='/about'/>" class="text-white">About</a></li>
          </ul>
        </div>
        <!-- Services -->
        <div class="col-md-2">
          <h5>Services</h5>
          <ul class="list-unstyled">
            <li><a href="<c:url value='/buy'/>" class="text-white">Buy</a></li>
            <li><a href="<c:url value='/rent'/>" class="text-white">Rent</a></li>
            <li><a href="<c:url value='/commercial'/>" class="text-white">Commercial</a></li>
            <li><a href="<c:url value='/pg'/>" class="text-white">PG/Hostel</a></li>
          </ul>
        </div>
        <!-- Contact -->
        <div class="col-md-4">
          <h5>Contact Info</h5>
          <ul class="list-unstyled">
            <li><i class="fas fa-map-marker-alt me-2"></i>123 Estate Street, Mumbai, India</li>
            <li><i class="fas fa-phone me-2"></i>+91 1234567890</li>
            <li><i class="fas fa-envelope me-2"></i>info@estatefinders.com</li>
          </ul>
        </div>
      </div>
      <hr>
      <div class="text-center">&copy; 2023 EstateFinders. All rights reserved.</div>
    </div>
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
