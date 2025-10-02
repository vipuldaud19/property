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
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                <img src="<c:url value='/resources/images/estate1.jpg' />" alt="Logo" width="50" class="d-inline-block align-top">
                <span>ESTATEFINDERS</span>
            </a>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="${pageContext.request.contextPath}/" style="margin-right:30px;">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/about" style="margin-right:30px;">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/login" style="margin-right:30px;">Login/Register</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="menuDropdown" role="button" data-bs-toggle="dropdown" style="margin-right:30px;">
                            Menu
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="menuDropdown">
                            <li><h4 class="dropdown-header">Services</h4></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/buy">Buy</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/rent">Rent</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/commercial">Commercial</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/pg">PG/Hostel</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/about">About Us</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/contact">Contact</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/adminlogin">Admin Login</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header with Search -->
    <div class="header-container">
        <img src="<c:url value='/resources/images/estate3.jpg'/>" alt="Real Estate Banner" />
        
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
                    <option value="Renuka nagar"></option>
                    <option value="kalapataru nagar"></option>
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
            </div>
        </div>
    </div>

    <!-- Property Listings Section -->
    <section id="buy-section" class="container mt-5">
        <h2 class="section-heading text-center">Properties Rent in Nashik</h2>
        
        <!-- 2bhk flats for rent -->
        <div class="property-card card mb-5" data-location="Govind nagar" style="max-width: 1200px;margin-left:25px;height:300px;">
            <div class="row g-0">
                <!-- Property Image and Details -->
                <div class="col-lg-8">
                    <div class="row g-0">
                        <div class="col-md-4 property-image-container">
                            <img src="<c:url value='/resources/images/image copy 2.png'/>" class="img-fluid" alt="Loongta Florenza" style="height:300px;">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body h-100 d-flex flex-column">
                                <h5 class="card-title">2BHK flats for rent</h5>
                                <p class="card-text flex-grow-1">
                                     Govind Nagar, Nashik
                                </p>
                                <div class="property-details">
                                    <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i> Govind nagar, Nashik</p>
                                    <p class="card-text mb-1"><i class="fas fa-bath me-2"></i> 2 BHK</p>
                                    <p class="card-text"><i class="fas fa-ruler-combined me-2"></i> 991-1101 sq ft</p>
                                </div>
                                <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                                    <span class="property-price">₹17k</span>
                                    <div class="mt-2 mt-sm-0">
                                        <a href="${pageContext.request.contextPath}/properties/2bhkrent" class="btn btn-outline-primary me-2">View Details</a>
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
                            <h5 class="mb-0"><i class="fas fa-star me-2"></i>Key Features of Flats</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-map-marked-alt"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Spacious living and dining areas</h6>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-building"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Well-ventilated bedrooms</h6>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-swimming-pool"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Balcony with each apartment</h6>   
                                    </div>
                                </li>
                                <li class="d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-hard-hat"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Attached bathrooms in all bedrooms</h6>                                       
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

		    <div class="property-card card mb-5" data-location="Gangapur"style="max-width: 1200px;margin-left:25px;">
		            <div class="row g-0">
		                <!-- Property Image and Details -->
		                <div class="col-lg-8">
		                    <div class="row g-0">
		                        <div class="col-md-4 property-image-container">
		                            <img src="<c:url value='/resources/images/image copy 5.png'/>" class="img-fluid" alt="Rivera Sky Garden"style="height:300px;">
		                        </div>
		                        <div class="col-md-8">
		                            <div class="card-body h-100 d-flex flex-column">
		                                <h5 class="card-title">2-3BHK Flats on Rent in Gangapur</h5>
		                                <p class="card-text flex-grow-1">
		                                    Premium 2-3 BHK apartments in Gangapur with contemporary design, 
		                                    excellent connectivity and top-notch amenities.
		                                </p>
		                                <div class="property-details">
		                                    <p class="card-text mb-1"><i class="fas fa-bed me-2"></i>2-3 Bedrooms</p>
		                                    <p class="card-text mb-1"><i class="fas fa-bath me-2"></i>2 Bathrooms</p>
		                                    <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1,800 sq ft</p>
		                                </div>
		                                <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
		                                    <span class="property-price">₹18k - 25k</span>
		                                    <div class="mt-2 mt-sm-0">
		                                        <a href="second.html" class="btn btn-outline-primary me-2">View Details</a>
		                                      
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
		                                        <p class="mb-0 text-muted small">Spacious living and dining areas</p>
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
		                                        <h6 class="mb-0">Species Bathrooms</h6>
		                                        <p class="mb-0 text-muted small">Attached bathrooms in all bedrooms</p>
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
		        <div class="property-card card mb-5" data-location="Pathardi phata"style="max-width: 1200px;margin-left:25px;">
		            <div class="row g-0">
		                <div class="col-lg-8">
		                    <div class="row g-0">
		                        <div class="col-md-4 property-image-container">
		                            <img src="<c:url value='/resources/images/image copy 6.png'/>" class="img-fluid" alt="3BHK Flat for rent"style="height:300px;">
		                        </div>
		                        <div class="col-md-8">
		                            <div class="card-body h-100 d-flex flex-column">
		                                <h5 class="card-title">3 BHK Flat for Rent</h5>
		                                <p class="card-text flex-grow-1">
		                                 Gajra Anmol Apartment, Pandav Nagari, Pathardi Phata, Nashik
		                                </p>
		                                <div class="property-details">
		                                    <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i> Pathardi Phata, Nashik, Maharashtra</p>
		                                    <p class="card-text mb-1"><i class="fas fa-home me-2"></i> 3 BHK</p>
		                                    <p class="card-text"><i class="fas fa-ruler-combined me-2"></i> 1613 sq ft</p>
		                                </div>
		                                <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
		                                    <span class="property-price">₹18.5k</span>
		                                    <div class="mt-2 mt-sm-0">
		                                        <a href="shreejicrown.html" class="btn btn-outline-primary me-2">View Details</a>
		                                      
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
		                            <h5 class="mb-0"><i class="fas fa-star me-2"></i>Why Choose us?</h5>
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
		        <div class="property-card card mb-5" data-location="Renuka nagar"style="max-width: 1200px;margin-left:25px;">
		            <div class="row g-0">
		                <!-- Property Image -->
		                <div class="col-md-4 property-image-container">
		                    <img src="<c:url value='/resources/images/image copy 8.png'/>" class="img-fluid" alt="Daksh Avlon"style="height:300px;">
		                </div>
		                
		                <!-- Property Details -->
		                <div class="col-md-5">
		                    <div class="card-body h-100 d-flex flex-column">
		                        <h5 class="card-title">2 BHK Flat for Rent in Renuka Nagar</h5>
		                        <p class="card-text flex-grow-1">
		                          Amodini apartment, Renuka Nagar, Nashik
		                        </p>
		                        <div class="property-details">
		                            <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i>Renuka Nagar, Nashik, Maharastra</p>
		                            <p class="card-text mb-1"><i class="fas fa-home me-2"></i>2 BHK</p>
		                            <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>1576-1730 sq ft</p>
		                        </div>
		                        <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
		                            <span class="property-price">₹22k</span>
		                            <div class="mt-2 mt-sm-0">
		                                <a href="2bhkrenuka.html" class="btn btn-outline-primary me-2">View Details</a>
		                               
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                
		                <!-- Why Choose Section -->
		                <div class="col-md-3">
		                    <div class="card h-100 why-choose-card border-0">
		                        <div class="card-header bg-primary text-white py-2">
		                            <h6 class="mb-0"><i class="fas fa-star me-2"></i>Why you should choose us?</h6>
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

		        

		       <!--Houses & Villas-->

		 <section id="house-section" class="container mt-5">
		        

		            <div class="property-card card mb-5 mx-auto"data-location="Pathardi Phata" style="max-width: 1200px;">
		        <div class="row g-0">
		            <div class="col-md-4 property-image-container">
		                <img src="<c:url value='/resources/images/villa1.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
		            </div>
		            <div class="col-md-5">
		                <div class="card-body h-100 d-flex flex-column">
		                    <h5 class="card-title">4 BHK Villa for Rent</h5>
		                    <p class="card-text flex-grow-1">Ekta Greenville, Buddha Vihar, Pathardi Phata, Nashik</p>
		                    <div class="property-details">
		                        <p class="card-text mb-1">4 Bedroom House</p>
		                        <p class="card-text mb-1">4 BHK</p>
		                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>2,700 sqft</p>
		                    </div>
		                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
		                        <span class="property-price">₹49k</span>
		                        <div class="mt-2 mt-sm-0">
		                            <a href="villa1.html" class="btn btn-outline-primary me-2">View Details</a>
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
		                <img src="<c:url value='/resources/images/vila1.avif'/>" class="img-fluid" alt="bungalow" style="height:300px; width:100%;">
		            </div>
		            <div class="col-md-5">
		                <div class="card-body h-100 d-flex flex-column">
		                    <h5 class="card-title">3.5 BHK Villa for Rent</h5>
		                    <p class="card-text flex-grow-1">Singh Bunglow, Pathardi Gaon, Pathardi Phata, Nashik</p>
		                    <div class="property-details">
		                        <p class="card-text mb-1">3.5 Bedroom House</p>
		                        <p class="card-text mb-1">3.5 BHK</p>
		                        <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>2700 sqft</p>
		                    </div>
		                    <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
		                        <span class="property-price">₹48k</span>
		                        <div class="mt-2 mt-sm-0">
		                            <a href="3.5villa.html" class="btn btn-outline-primary me-2">View Details</a>
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


		  s
    </section>

    <!-- Footer Section -->
    <footer class="bg-dark text-white py-4 mt-5">
        <div class="container">
            <div class="row align-items-start">
                <div class="col-md-4 mb-4 mb-md-0">
                    <h5>EstateFinders</h5>
                    <p>Find your dream home with our premium real estate services across India.</p>
                    <div class="social-icons mb-2">
                        <a href="#" class="text-white me-2"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-white me-2"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-white me-2"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="text-white me-2"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-md-2 mb-4 mb-md-0">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="${pageContext.request.contextPath}/" class="text-white">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/properties" class="text-white">Properties</a></li>
                        <li><a href="${pageContext.request.contextPath}/contact" class="text-white">Contact</a></li>
                        <li><a href="${pageContext.request.contextPath}/about" class="text-white">About Us</a></li>
                    </ul>
                </div>
                <div class="col-md-2 mb-4 mb-md-0">
                    <h5>Services</h5>
                    <ul class="list-unstyled">
                        <li><a href="${pageContext.request.contextPath}/buy" class="text-white">Buy</a></li>
                        <li><a href="${pageContext.request.contextPath}/rent" class="text-white">Rent</a></li>
                        <li><a href="${pageContext.request.contextPath}/commercial" class="text-white">Commercial</a></li>
                        <li><a href="${pageContext.request.contextPath}/pg" class="text-white">PG/Hostel</a></li>
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
            <div class="row">
                <div class="col text-center">
                    <p class="mb-0">&copy; 2023 EstateFinders. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript remains the same -->
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