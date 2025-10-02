<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Properties List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
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
        .property-card { max-width: 1200px; margin-left: 25px; height: 380px; }
        .property-image-container img { height: 400px; object-fit: cover; width: 100%; }
        .property-price { font-weight: bold; font-size: 1.2rem; color: #007bff; }
    </style>
</head>
<body>
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

<div class="container mt-5">
    <h2 class="mb-3">Available Properties</h2>

    <c:forEach var="property" items="${properties}">
        <!-- Property Card -->
        <div class="property-card card mb-5">
            <div class="row g-0">
                <!-- Property Image and Details -->
                <div class="col-lg-8">
                    <div class="row g-0">
                        <div class="col-md-4 property-image-container">
                            <c:choose>
                                <c:when test="${not empty property.imagePath}">
                                    <img src="${property.imagePath}" class="img-fluid" alt="${property.title}">
                                </c:when>
                                <c:otherwise>
                                    <img src="/images/default.jpg" class="img-fluid" alt="Default Property">
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="col-md-8">
                            <div class="card-body h-100 d-flex flex-column">
                                <h5 class="card-title">${property.title}</h5>
                                <p class="card-text flex-grow-1">${property.description}</p>
                                <div class="property-details">
                                    <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i> ${property.address}</p>
                                    <p class="card-text mb-1"><i class="fas fa-tag me-2"></i> Status: ${property.status}</p>
                                  
                                </div>
                                <div class="">
                                    <span class="property-price">${property.price}</span>
                                    <div class="mt-2 mt-sm-0">
                                        <a href="${pageContext.request.contextPath}/property/${property.id}" 
                                           class="btn btn-outline-primary me-2">View Details</a>

                                        <!-- Accept / Decline buttons -->
                                       
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
                            <h5 class="mb-0"><i class="fas fa-star me-2"></i> Why Choose ${property.title}?</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-map-marked-alt"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Prime Location</h6>
                                        <p class="mb-0 text-muted">${property.address}</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-building"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Spacious Design</h6>
                                        <p class="mb-0 text-muted">Well-planned layouts & premium finishes</p>
                                    </div>
                                </li>
                                <li class="mb-3 d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-swimming-pool"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Modern Amenities</h6>
                                        <p class="mb-0 text-muted">Lifestyle features for comfortable living</p>
                                    </div>
                                </li>
                                <li class="d-flex">
                                    <div class="flex-shrink-0 text-primary me-3">
                                        <i class="fas fa-hard-hat"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-1">Trusted Developer</h6>
                                        <p class="mb-0 text-muted">Delivered quality projects on time</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer bg-light">
                            <small class="text-muted"><i class="fas fa-info-circle me-1"></i> RERA Registered Project</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
