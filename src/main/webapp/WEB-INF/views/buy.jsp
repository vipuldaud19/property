<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EstateFinders - Property Listings</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #e74c3c;
            --accent-color: #3498db;
            --light-color: #ecf0f1;
            --dark-color: #2c3e50;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
        }
        
        /* Header Section */
        .header-container {
            position: relative;
            width: 100%;
            height: 400px;
            overflow: hidden;
        }
        
        .header-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        /* Navbar */
        .navbar {
            background-color: var(--primary-color) !important;
            padding: 10px 0;
        }
        
        .navbar-brand {
            display: flex;
            align-items: center;
            margin-left: 15px;
        }
        
        .navbar-brand span {
            font-size: 1.2rem;
            font-weight: 700;
            color: white;
            letter-spacing: 0.5px;
            margin-left: 8px;
        }
        
        .nav-link {
            color: white !important;
            font-family: Verdana, sans-serif;
            font-size: 0.9rem;
            padding: 8px 12px;
            transition: color 0.3s;
        }
        
        .nav-link:hover {
            color: var(--secondary-color) !important;
        }
        
        /* Hero Search */
        .hero-search {
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 90%;
            max-width: 600px;
            background-color: transparent;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        
        .search-form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        
        .search-form .dropdown,
        .search-form input,
        .search-form button {
            width: 100%;
        }
        
        .quick-links {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 8px;
            margin-top: 15px;
        }
        
        .quick-links a {
            color: #2c3e50;
            text-decoration: none;
            transition: all 0.3s;
            padding: 6px 12px;
            font-size: 0.8rem;
            border-radius: 20px;
            background-color: rgba(255, 255, 255, 0.8);
        }
        
        .quick-links a:hover {
            background-color: var(--primary-color);
            color: white !important;
        }
        
        /* Property Cards */
        .property-card {
            margin: 20px 0;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            border: none;
            border-radius: 10px;
            overflow: hidden;
        }
        
        .property-image-container {
            height: 250px;
            overflow: hidden;
        }
        
        .property-image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .property-details {
            margin-bottom: 1rem;
        }
        
        .property-price {
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--primary-color);
        }
        
        /* Why Choose Card */
        .why-choose-card {
            height: 100%;
            border-left: none;
            border-radius: 0 0 10px 10px;
        }
        
        /* Section Headings */
        .section-heading {
            font-size: 1.8rem;
            font-weight: 600;
            color: var(--primary-color);
            margin-bottom: 1.5rem;
            position: relative;
            padding-bottom: 10px;
        }
        
        .section-heading::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background-color: var(--accent-color);
        }
        
        /* Footer */
        .footer {
            background-color: var(--dark-color);
            color: white;
            padding: 30px 0;
        }
        
        .footer h5 {
            font-size: 1.2rem;
            margin-bottom: 1rem;
        }
        
        .footer ul {
            padding-left: 0;
            list-style: none;
        }
        
        .footer ul li {
            margin-bottom: 0.5rem;
        }
        
        .footer a {
            color: var(--light-color);
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer a:hover {
            color: var(--accent-color);
        }
        
        .social-icons a {
            display: inline-block;
            margin-right: 10px;
            color: white;
            font-size: 1.2rem;
        }
        
        /* Responsive Adjustments */
        @media (min-width: 576px) {
            .search-form {
                flex-direction: row;
                align-items: center;
            }
            
            .search-form .dropdown {
                width: auto;
            }
            
            .search-form input {
                flex-grow: 1;
            }
            
            .quick-links a {
                font-size: 0.9rem;
                padding: 6px 15px;
            }
        }
        
        @media (min-width: 768px) {
            .header-container {
                height: 500px;
            }
            
            .navbar-brand {
                margin-left: 30px;
            }
            
            .navbar-brand span {
                font-size: 1.4rem;
            }
            
            .nav-link {
                font-size: 1rem;
                padding: 8px 15px;
            }
            
            .hero-search {
                padding: 20px;
            }
            
            .why-choose-card {
                border-radius: 0 10px 10px 0;
                border-left: 1px solid rgba(0,0,0,0.1);
            }
            
            .property-image-container {
                height: 100%;
            }
        }
        
        @media (min-width: 992px) {
            .section-heading {
                font-size: 2rem;
            }
        }
        @media (max-width: 767.98px) {
        .property-card {
            max-width: 100%;
        }
        .property-image-container {
            min-height: 250px;
        }
        .why-choose-card {
            margin-top: 1rem !important;
            border-radius: 0.375rem !important;
        }
        .card-body {
            padding: 1.25rem !important;
        }
    }
    
    @media (min-width: 768px) {
        .property-card {
            border-radius: 0.5rem;
            overflow: hidden;
        }
        .why-choose-card {
            border-left: 1px solid #dee2e6 !important;
        }
    }
    
    .property-price {
        color: #0d6efd;
        font-weight: 600;
    }
    
    .why-choose-card .card-header {
        font-size: 0.9rem;
    }
    
    .why-choose-card h6 {
        font-size: 0.85rem;
    }
    
    .why-choose-card .text-muted {
        font-size: 0.75rem;
    }
    </style>
</head>
<body>
    <!-- Navbar -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<nav class="navbar navbar-expand-lg">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="${pageContext.request.contextPath}/buy">
			<img src="<c:url value='/resources/images/estate1.jpg' />" 
			         alt="Logo" width="60" class="d-inline-block align-top">

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
	            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/property/buy">Buy</a></li>
	            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/property/rent">Rent</a></li>
	            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/commercial">Commercial</a></li>
	            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/pg">PG/Hostel</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/">About Us</a></li>
	            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/contact">Contact</a></li>
	            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/adminlogin">Admin Login</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>

	    <!-- Content -->
    <!-- Header with Search -->
    <div class="header-container">
        <img src="<c:url value='/resources/images/estate3.jpg' />" alt="Real Estate Banner" />
        
        <!-- Search bar with quick links below -->
        <div class="hero-search">
            <form class="search-form" role="search" id="propertySearchForm">
                <div class="dropdown">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Nashik
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item location-option" href="#" data-location="Mumbai">Mumbai</a></li>
                        <li><a class="dropdown-item location-option" href="#" data-location="Pune">Pune</a></li>
                        <li><a class="dropdown-item location-option" href="#" data-location="Ch.Sambhajinagar">Ch.Sambhajinagar</a></li>
                        <li><a class="dropdown-item location-option" href="#" data-location="Jalgaon">Jalgaon</a></li>
                    </ul>
                </div>
                <input class="form-control" type="search" 
                    placeholder="Enter location, property type..." aria-label="Search" id="propertySearchInput" list="locationSuggestions">
                <datalist id="locationSuggestions">
                    <option value="Nashik">
                    <option value="Pathardi Phata">
                    <option value="Nashik road">
                    <option value="Govind nagar">
                    <option value="Gangapur">
                    <option value="Chandshi">
                    <option value="Cidco">
                    <option value="Satpur">
                               
                           </option>
                </datalist>
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
            
            <!-- Quick Links -->
            <div class="quick-links">
                <a href="#buy-section" class="btn btn-outline-primary btn-sm">
                    Flats/Apartments
                </a>
                <a href="#house-section" class="btn btn-outline-primary btn-sm">
                    Houses
                </a>
                <a href="#Plot-section" class="btn btn-outline-primary btn-sm">
                    Plot/Land
                </a>
                <a href="#Commercial-section" class="btn btn-outline-primary btn-sm">
                    Commercial
                </a>
				<a class="btn btn-outline-primary btn-sm" href="${pageContext.request.contextPath}/estate/list">New Properties</a>
            </div>
        </div>
    </div>

    <!-- Property Listings Section -->
    <section id="buy-section" class="container mt-5">
        <h2 class="section-heading text-center">Properties Buy in Nashik</h2>
        
        <!-- Roongta Florenza -->
        <div class="property-card card mb-5" data-location="Govind nagar"style="max-width: 1200px;margin-left:25px;height:300px;">
            <div class="row g-0">
                <!-- Property Image and Details -->
                <div class="col-lg-8">
                    <div class="row g-0">
                        <div class="col-md-4 property-image-container">
							<img src="<c:url value='/resources/images/roon.avif' />" 
																				     class="img-fluid" alt="Roongta Florenza" style="height:300px;">

                        </div>
                        <div class="col-md-8">
                            <div class="card-body h-100 d-flex flex-column">
                                <h5 class="card-title">Roongta Florenza</h5>
                                <p class="card-text flex-grow-1">
                                    Luxury 2-3 BHK apartment in Govind Nagar with modern amenities, 
                                    spacious living areas, and premium finishes.
                                </p>
                                <div class="property-details">
                                    <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i> Govind nagar, Nashik</p>
                                    <p class="card-text mb-1"><i class="fas fa-bath me-2"></i> 2-3 BHK</p>
                                    <p class="card-text"><i class="fas fa-ruler-combined me-2"></i> 991-1101 sq ft</p>
                                </div>
                                <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                                    <span class="property-price">₹46.58L - ₹51.75L</span>
                                    <div class="mt-2 mt-sm-0">
                                        <a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
                                     
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Why Choose Section -->
                <div class="col-lg-4">
                    <div class="card h-100 why-choose-card">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Roongta Florenza?</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-map-marked-alt"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Spacious Living</h6>
                                        <p class="mb-0 text-muted">1.5 acre project for comfortable lifestyle</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-building"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Exclusive Community</h6>
                                        <p class="mb-0 text-muted">196 units across 7 towers (low density)</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-swimming-pool"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Premium Amenities</h6>
                                        <p class="mb-0 text-muted">15+ luxury lifestyle amenities</p>
                                    </div>
                                </li>
                                <li class="d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-hard-hat"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Trusted Developer</h6>
                                        <p class="mb-0 text-muted">Roongta Builders and Developers</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer bg-light">
                            <small class="text-muted"><i class="fas fa-info-circle me-1"></i>RERA Registered: P123456789</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Rivera Sky Garden -->
        <div class="property-card card mb-5" data-location="Gangapur"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <!-- Property Image and Details -->
                <div class="col-lg-8">
                    <div class="row g-0">
                        <div class="col-md-4 property-image-container">
							<img src="<c:url value='/resources/images/rivera.jpg' />" 
													     class="img-fluid" alt="Roongta Florenza" style="height:300px;">

                        </div>
                        <div class="col-md-8">
                            <div class="card-body h-100 d-flex flex-column">
                                <h5 class="card-title">Rivera Sky Garden</h5>
                                <p class="card-text flex-grow-1">
                                    Premium 2-3 BHK apartments in Gangapur with contemporary design, 
                                    excellent connectivity and top-notch amenities.
                                </p>
                                <div class="property-details">
                                      <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i> Gangapur, Nashik, Maharashtra</p>
                                    <p class="card-text mb-1"><i class="fas fa-bed me-2"></i>2-3 Bedrooms</p>
                                    <p class="card-text mb-1"><i class="fas fa-bath me-2"></i>2 Bathrooms</p>
                                    <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1,800 sq ft</p>
                                </div>
                                <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                                    <span class="property-price">₹37L - 61L</span>
                                    <div class="mt-2 mt-sm-0">
										<a href="${pageContext.request.contextPath}/rivera"  class="btn btn-outline-primary me-2">View Details</a>
										                                   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Why Choose Section -->
                <div class="col-lg-4">
                    <div class="card h-100 why-choose-card">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-3">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-3 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Swimming pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community with CCTV</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex align-items-start">
                                    <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Parking Space</h6>
                                        <p class="mb-0 text-muted small">Dedicated parking for all</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-leaf text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Living</h6>
                                        <p class="mb-0 text-muted small">Eco-friendly environment</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Shreeji The Crown -->
        <div class="property-card card mb-5" data-location="Govind nagar"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <div class="col-lg-8">
                    <div class="row g-0">
                        <div class="col-md-4 property-image-container">
                            <img src="<c:url value='/resources/images/shree.jpg'/>" class="img-fluid" alt="Shreeji The Crown">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body h-100 d-flex flex-column">
                                <h5 class="card-title">Shreeji The Crown</h5>
                                <p class="card-text flex-grow-1">
                                    Make Shreeji The Crown your next home. This project offers 3 BHK flats in Govind Nagar, Nashik. With a built-up area ranging from 1613.0 sq. ft. to 1705.0 sq. ft.
                                </p>
                                <div class="property-details">
                                    <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i> Govind nagar, Nashik, Maharashtra</p>
                                    <p class="card-text mb-1"><i class="fas fa-home me-2"></i> 3 BHK</p>
                                    <p class="card-text"><i class="fas fa-ruler-combined me-2"></i> 1613 sq ft</p>
                                </div>
                                <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                                    <span class="property-price">₹1.05Cr - ₹1.11Cr</span>
                                    <div class="mt-2 mt-sm-0">
										<a href="${pageContext.request.contextPath}/shreeji"  class="btn btn-outline-primary me-2">View Details</a>
										                                   s
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Why Choose Section -->
                <div class="col-lg-4">
                    <div class="card h-100 why-choose-card">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Shreeji The Crown?</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-building"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Premium Construction</h6>
                                        <p class="mb-0 text-muted">High-quality materials and finishes</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-tree"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Green Spaces</h6>
                                        <p class="mb-0 text-muted">Beautifully landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-swimming-pool"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted">B + G + 28 Storey Iconic High-Rise Tower</p>
                                    </div>
                                </li>
                                <li class="d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-shield-alt"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">24/7 Security</h6>
                                        <p class="mb-0 text-muted">Gated community with CCTV surveillance</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Daksh Avlon -->
        <div class="property-card card mb-5" data-location="Gangapur"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <!-- Property Image -->
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/daksh.jpg'/>" class="img-fluid" alt="Daksh Avlon"style="height:300px;">
                </div>
                
                <!-- Property Details -->
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title">Daksh Avlon</h5>
                        <p class="card-text flex-grow-1">
                            Check out 3,4 BHK apartments in Gangapur, now available for sale at Daksh Avlon. Apartments in this complex are available in price range of Rs. 1.12 - 1.53 Cr.
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i>Gangapur, Nashik, Maharastra</p>
                            <p class="card-text mb-1"><i class="fas fa-home me-2"></i>3-4 BHK</p>
                            <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1576-1730 sq ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">₹1.12 - 1.53 Cr</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
								                                   
                               
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Why Choose Section -->
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why you should consider Daksh Avlon?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <p class="mb-0 text-muted small">Open Air Theatre</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vedant Apartment -->
        <div class="property-card card mb-5" data-location="Pathardi Phata"style="max-width: 1200px;margin-left:50px;margin-left:25px;">
            <div class="row g-0">
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/vedant.avif'/>" class="img-fluid" alt="vedant"style="height:300px;">
                </div>
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title">Vedant Apartment</h5>
                        <p class="card-text flex-grow-1">
                     Vedant is a 1 & 2 BHK Value Home Apartment Project. The Project is located at 18mtr & 12 mtr wide D. P. road.
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1"> Pathardi Phata,Nashik,Maharastra</p>
                            <p class="card-text mb-1"></i> 1,2BHk</p>
                            <p class="card-text"> 632 to 968 sq ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">Price on request</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
								                                    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Spaces</h6>
                                        <p class="mb-0 text-muted small">Landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- The Grand by parksyde -->
        <div class="property-card card mb-5" data-location="Gangapur"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/grand.jpg'/>" class="img-fluid" alt="orchid">
                </div>
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title">The Grand by parksyde</h5>
                        <p class="card-text flex-grow-1">
                     Check out 3,4 BHK apartments in Gangapur, now available for sale at The Grand by Parksyde. This society is RERA approved and P51600034070 is the RERA number.
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1"></i> Gangapur,Nashik,Maharastra</p>
                            <p class="card-text mb-1"></i> 3-4 BHk</p>
                            <p class="card-text"><i class="fas fa-ruler-combined me-2"></i> 1576-1730 sq ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">3BHK -95L</span>
                            <span class="property-price">4BHK -1.5-1.7cr</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
								                                   
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Spaces</h6>
                                        <p class="mb-0 text-muted small">Landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bhoomi Imperia -->
        <div class="property-card card mb-5" data-location="Pathardi Phata"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/bhoomi.avif'/>" class="img-fluid" alt="orchid">
                </div>
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title"> Bhoomi Imperia</h5>
                        <p class="card-text flex-grow-1">
                      Here are beautifully built 2 BHK apartments in Pathardi Phata, available for sale at Bhoomi Imperia. This society is RERA approved and P51600034689 is the RERA number. 
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1"> Pathardi Phata, Nashik,Maharastra</p>
                            <p class="card-text mb-1"></i> 2 BHk</p>
                            <p class="card-text"></i> 1021 to 1302 sq ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">₹41.86 L - 53.38 L</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
								                                   
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Spaces</h6>
                                        <p class="mb-0 text-muted small">Landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Palm town -->
        <div class="property-card card mb-5" data-location="Gangapur"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/palm.jpeg'/>" class="img-fluid" alt="orchid">
                </div>
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title">Palm town</h5>
                        <p class="card-text flex-grow-1">
                  Palmtown is planned, designed, and developed project of Mahalaxmi Associates, Surana Developers, and Fortune
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1">Gangapur,Nashik,Maharastra</p>
                            <p class="card-text mb-1"></i> 2-3 BHk</p>
                            <p class="card-text"><i class="fas fa-ruler-combined me-2"></i> 1132-1460sq.ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">2BHK -59L</span>
                            <span class="property-price">3BHK -75L</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/palm"  class="btn btn-outline-primary me-2">View Details</a>
								                                   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Spaces</h6>
                                        <p class="mb-0 text-muted small">Landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- AC bel Air -->
        <div class="property-card card mb-5" data-location="Nashik road"style="max-width: 1200px;margin-left:25px;height:300px;">
            <div class="row g-0">
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/ac.jpg'/>" class="img-fluid" alt="orchid"height="300px">
                </div>
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title">AC bel Air</h5>
                        <p class="card-text flex-grow-1">
                   Finest 4,5 BHK apartments in Nashik Road available for sale in AC Bel Air. AC Bel Air 's RERA registration number is P51600077025. This society offers apartments in the price range of Rs. 97.07 L - 2.7 Cr.
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1">Nashik road,Nashik,Maharastra</p>
                            <p class="card-text mb-1"></i> 4-5BHk</p>
                            <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>3460 sq ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">1.17cr-1.97cr</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
								                                   
                          
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Spaces</h6>
                                        <p class="mb-0 text-muted small">Landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bliss Pearls -->
        <div class="property-card card mb-5" data-location="Pathardi Phata"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/birrls.avif'/>" class="img-fluid" alt="orchid"style="height:300px;">
                </div>
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title">Bliss Pearls</h5>
                        <p class="card-text flex-grow-1">
                Jay Sai Park society now offers elegantly built 2 BHK apartments in Nashik Road. This society is RERA approved and P51600022232 is the RERA number. 
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1">Pathardi Phata, Nashik,Maharastra</p>
                            <p class="card-text mb-1"></i> 3 BHk</p>
                            <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1488 sq.ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">₹66.99 L</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
								                                   
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Spaces</h6>
                                        <p class="mb-0 text-muted small">Landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pride Laxmi Ramna -->
        <div class="property-card card mb-5" data-location="Nashik road"style="max-width: 1200px;margin-left:25px;">
            <div class="row g-0">
                <div class="col-md-4 property-image-container">
                    <img src="<c:url value='/resources/images/pride.jpg'/>" class="img-fluid" alt="orchid"style="height:310px;">
                </div>
                <div class="col-md-5">
                    <div class="card-body h-100 d-flex flex-column">
                        <h5 class="card-title">Pride Laxmi Ramna</h5>
                        <p class="card-text flex-grow-1">
        Pride Laxmi Ramna, one of the known housing societes in Nashik, brings classic yet modern 2,3 BHK apartments in Nashik Road. This society is RERA approved and P51600031611 is the RERA number. 
                        </p>
                        <div class="property-details">
                            <p class="card-text mb-1">Nashik road,Nashik,Maharastra</p>
                            <p class="card-text mb-1"></i> 2-3BHk</p>
                            <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>925-1,282 sq ft</p>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                            <span class="property-price">34.33L-47.43L</span>
                            <div class="mt-2 mt-sm-0">
								<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
								                                   
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 why-choose-card border-0">
                        <div class="card-header bg-primary text-white py-2">
                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                        </div>
                        <div class="card-body p-2">
                            <ul class="list-unstyled mb-0">
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-building text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Premium Construction</h6>
                                        <p class="mb-0 text-muted small">High-quality materials</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Green Spaces</h6>
                                        <p class="mb-0 text-muted small">Landscaped gardens</p>
                                    </div>
                                </li>
                                <li class="mb-2 d-flex align-items-start">
                                    <i class="fas fa-swimming-pool text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">Luxury Amenities</h6>
                                        <p class="mb-0 text-muted small">Pool & clubhouse</p>
                                    </div>
                                </li>
                                <li class="d-flex align-items-start">
                                    <i class="fas fa-shield-alt text-primary mt-1 me-2"></i>
                                    <div>
                                        <h6 class="mb-0">24/7 Security</h6>
                                        <p class="mb-0 text-muted small">Gated community</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
</section>

       <!--Houses & Villas-->

 <section id="house-section" class="container mt-5">
        

            <div class="property-card card mb-5 mx-auto"data-location="Govind nagar" style="max-width: 1200px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/ho1.jpg'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Govind nagar, Nashik</h5>
                    <p class="card-text flex-grow-1">This property is individual bungalow and the natural air for positivity.</p>
                    <div class="property-details">
                        <p class="card-text mb-1">3 Bedroom House</p>
                        <p class="card-text mb-1">3 BHK</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1,971 sqft</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹2.3 cr</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
        <!--card2 -->
 <div class="property-card card mb-5 mx-auto"data-location="Gangapur" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/ho2.jpg'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Gangapur, Nashik</h5>
                    <p class="card-text flex-grow-1">Modern bungalow with spacious interiors and beautiful views of the surroundings.</p>
                    <div class="property-details">
                        <p class="card-text mb-1">2 Bedroom House</p>
                        <p class="card-text mb-1">2 BHK</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1,350 sqft</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹45 L</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<!--card 3-->

        <div class="property-card card mb-5 mx-auto"data-location="Pathardi Phata" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/p1.jpg'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Pathardi Phata, Nashik</h5>
                    <p class="card-text flex-grow-1">This villa is currently under construction stage and you can expect to get the possession of the property within 6 months. </p>
                    <div class="property-details">
                        <p class="card-text mb-1">2 Bedroom House</p>
                        <p class="card-text mb-1">2 BHK</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>900 sqft</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹51 L</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!--card 4-->

        <div class="property-card card mb-5 mx-auto"data-location="Gangapur" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/arpan.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Gangapur, Nashik</h5>
                    <p class="card-text flex-grow-1">This villa is currently under construction stage and you can expect to get the possession of the property within 6 months. </p>
                    <div class="property-details">
                        <p class="card-text mb-1">4,5 Bedroom House</p>
                        <p class="card-text mb-1">4.5 BHK Villa</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>4350
sq.ft</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹3.21 cr</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/minika"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


<!--card 5-->

        <div class="property-card card mb-5 mx-auto"data-location="Nashik road" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/n2.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Nashik road, Nashik</h5>
                    <p class="card-text flex-grow-1">This villa is currently under construction stage and you can expect to get the possession of the property within 6 months. </p>
                    <div class="property-details">
                        <p class="card-text mb-1">2 Bedroom House</p>
                        <p class="card-text mb-1">2 BHK Villa</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1200 sq.ft


</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹60.0 L</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


        
    </section>

<!--Plots & Lands--> 
    <section id="Plot-section" class="container mt-5">
       
            <div class="property-card card mb-5 mx-auto"data-location="Pathardi Phata" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/pl1.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">C Global Shrihari Nagar Phase 1</h5>
                    <h5 class="card-title">Pathardi Phata, Nashik</h5>
                   
                    <div class="property-details">
              
                        <p class="card-text mb-1">
5.5 acres</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>684 - 7200 sq.ft.</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹14.21 L - 1.5 Cr</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
        <!--card2 -->
 
<!--card 3-->

       <div class="property-card card mb-5 mx-auto" data-location="Satpur" style="max-width: 1200px;margin-left:25px;">
    <div class="row g-0">
        <!-- Image Section -->
        <div class="col-md-4 property-image-container">
            <img src="<c:url value='/resources/images/pl3.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
        </div>

        <!-- Text Section -->
        <div class="col-md-5 d-flex flex-column">
            <div class="card-body flex-grow-1 d-flex flex-column">
                <h5 class="card-title mb-1">Royals Land Plots In Satpur</h5>
                <h5 class="card-title text-muted">Satpur, Nashik</h5>

                <p class="card-text mb-1">50 acres</p>
                <p class="card-text">
                    <i class="fas fa-ruler-combined me-2"></i>1000 - 10000 sq.ft.
                </p>

                <!-- Price and Button Alignment -->
                <div class="mt-auto d-flex justify-content-between align-items-center pt-3">
                    <span class="property-price fs-5 fw-semibold ms-2">₹3.0 L - 30.0 L</span>
					<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
					                                   
                </div>
            </div>
        </div>

        <!-- Why Choose Us Section -->
        <div class="col-md-3">
            <div class="card h-100 why-choose-card border-0 mx-auto" style="width: 100%;">
                <div class="card-header bg-primary text-white py-2">
                    <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                </div>
                <div class="card-body p-2">
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2 d-flex align-items-start">
                            <i class="fas fa-building text-primary mt-1 me-2"></i>
                            <div>
                                <h6 class="mb-0">Modern Architecture</h6>
                                <p class="mb-0 text-muted small">Contemporary and functional design</p>
                            </div>
                        </li>
                        <li class="mb-2 d-flex align-items-start">
                            <i class="fas fa-tree text-primary mt-1 me-2"></i>
                            <div>
                                <h6 class="mb-0">Eco-Friendly</h6>
                                <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                            </div>
                        </li>
                        <li class="mb-2 d-flex align-items-start">
                            <i class="fas fa-parking text-primary mt-1 me-2"></i>
                            <div>
                                <h6 class="mb-0">Spacious Parking</h6>
                                <p class="mb-0 text-muted small">Covered & open areas</p>
                            </div>
                        </li>
                        <li class="d-flex align-items-start">
                            <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                            <div>
                                <h6 class="mb-0">Smart Security</h6>
                                <p class="mb-0 text-muted small">CCTV & access control</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--card 4-->

        <div class="property-card card mb-5 mx-auto"data-location="Cidco" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/pl4.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    
                    <h5 class="card-title">Malpani Kesari Nandan Plots</h5>
                  <h5 class="card-title">Cidco,Nashik</h5>
                    <div class="property-details">
                      
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>565 - 767 sq.ft.
</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">Price on Request
</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>




        
    </section>
    <!--Commercial-->
    <section id="Commercial-section">
        <!--card1-->
             <div class="property-card card mb-5 mx-auto"data-location="Chandshi" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/chand.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Shop for sale in Chandshi

 </h5>
                      <h5 class="card-title">Chandshi, Nashik </h5>
                
                    <div class="property-details">
                 
                        <p class="card-text mb-1">4 floors</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>159 sq.ft

</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹34.0 L</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

  <!--card2-->
          <div class="property-card card mb-5 mx-auto"data-location="Satpur" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/sat.jpg'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Commercial Property for sale in Satpur

 </h5>
                      <h5 class="card-title">Satpur, Nashik </h5>
                
                    <div class="property-details">
                 
                        <p class="card-text mb-1">2 floors</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>8,300 sq.ft

</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹4.6 Cr</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--card3-->
          <div class="property-card card mb-5 mx-auto"data-location="Nashik road" style="max-width: 1200px;margin-left:25px;">
        <div class="row g-0">
            <div class="col-md-4 property-image-container">
                <img src="<c:url value='/resources/images/nak.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
            </div>
            <div class="col-md-5">
                <div class="card-body h-100 d-flex flex-column">
                    <h5 class="card-title">Shop for sale in Nashik Road

 </h5>
                      <h5 class="card-title">Nashik road, Nashik </h5>
                
                    <div class="property-details">
                 
                        <p class="card-text mb-1">3 floors</p>
                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>250 sq.ft

</p>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                        <span class="property-price">₹1.0 Cr</span>
                        <div class="mt-2 mt-sm-0">
							<a href="${pageContext.request.contextPath}/roongta"  class="btn btn-outline-primary me-2">View Details</a>
							                                   
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card h-100 why-choose-card border-0" style="width: 100%;">
                    <div class="card-header bg-primary text-white py-2">
                        <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose Us?</h6>
                    </div>
                    <div class="card-body p-2">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-building text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Modern Architecture</h6>
                                    <p class="mb-0 text-muted small">Contemporary and functional design</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-tree text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Eco-Friendly</h6>
                                    <p class="mb-0 text-muted small">Solar panels & water harvesting</p>
                                </div>
                            </li>
                            <li class="mb-2 d-flex align-items-start">
                                <i class="fas fa-parking text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Spacious Parking</h6>
                                    <p class="mb-0 text-muted small">Covered & open areas</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-start">
                                <i class="fas fa-cctv text-primary mt-1 me-2"></i>
                                <div>
                                    <h6 class="mb-0">Smart Security</h6>
                                    <p class="mb-0 text-muted small">CCTV & access control</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </section>
	
	
    <footer class="bg-dark text-white py-4 mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4 mb-md-0">
                    <h5>EstateFinders</h5>
                    <p>Find your dream home with our premium real estate services across India.</p>
                    <div class="social-icons">
                        <a href="#" class="text-white me-2"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-white me-2"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-white me-2"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="text-white me-2"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-md-2 mb-4 mb-md-0">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="project.html" class="text-white">Home</a></li>
                        <li><a href="project.html" class="text-white">Properties</a></li>
                        <li><a href="contact.html" class="text-white">Contact</a></li>
                        <li><a href="about.html" class="text-white">About Us</a></li>
                    </ul>
                </div>
                <div class="col-md-2 mb-4 mb-md-0">
                    <h5>Services</h5>
                    <ul class="list-unstyled">
                        <li><a href="buy.html" class="text-white">Buy</a></li>
                        <li><a href="rent.html" class="text-white">Rent</a></li>
                        <li><a href="comercial.html" class="text-white">Commercial</a></li>
                        <li><a href="pg.html" class="text-white">PG/Hostel</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contact Info</h5>
                    <ul class="list-unstyled">
                        <li><i class="fas fa-map-marker-alt me-2"></i> 123 Estate Street, Mumbai, India</li>
                        <li><i class="fas fa-phone me-2"></i> +91 1234567890</li>
                        <li><i class="fas fa-envelope me-2"></i> info@estatefinders.com</li>
                    </ul>
                </div>
            </div>
            <hr>
            <div class="text-center">
                <p class="mb-0">&copy; 2023 EstateFinders. All rights reserved.</p>
            </div>
        </div>
    </footer>
    <!-- Results Container (for search functionality) -->
    <div id="searchResults" class="container mt-4" style="display: none;">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3>Properties in <span id="locationName"></span></h3>
            <div id="resultCount" class="badge bg-primary"></div>
        </div>
        <div class="row" id="propertyResults"></div>
    </div>

	<script>
	document.addEventListener('DOMContentLoaded', function() {
	    const searchForm = document.getElementById('propertySearchForm');
	    const searchInput = document.getElementById('propertySearchInput');
	    const propertyCards = document.querySelectorAll('.property-card');

	    searchForm.addEventListener('submit', function(e) {
	        e.preventDefault();
	        const query = searchInput.value.trim().toLowerCase();

	        propertyCards.forEach(card => {
	            const location = card.getAttribute('data-location').toLowerCase();
	            if(location.includes(query)) {
	                card.style.display = 'block'; // show matching cards
	            } else {
	                card.style.display = 'none'; // hide non-matching cards
	            }
	        });
	    });
	});
	</script>


</body>
</html>