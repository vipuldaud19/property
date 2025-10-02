<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Estate List</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
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
		        .property-card { max-width: 1200px; margin-left: 25px; height: 380px; }
		        .property-image-container img { height: 380px; object-fit: cover; width: 100%; }
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
			            <a class="nav-link active" href="${pageContext.request.contextPath}/admin/properties" style="margin-right:30px;">Sell property</a>
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

    <c:forEach var="estate" items="${estates}">
        <!-- Estate Card -->
        <div class="property-card card mb-5" data-location="${estate.location}">
            <div class="row g-0">
                <!-- Property Image and Details -->
                <div class="col-lg-8">
                    <div class="row g-0">
                        <div class="col-md-4 property-image-container">
                            <c:if test="${not empty estate.mainImagePath}">
                                <img src="${estate.mainImagePath}" class="img-fluid" alt="${estate.name}">
                            </c:if>
                        </div>
                        <div class="col-md-8">
                            <div class="card-body h-100 d-flex flex-column">
                                <h5 class="card-title">${estate.name} - ${estate.builderName}</h5>
                                <p class="card-text flex-grow-1">
                                    Premium apartments located in ${estate.location}. Modern design,
                                    great connectivity, and amenities for comfortable living.
                                </p>
                                <div class="property-details">
                                    <p class="card-text mb-1"><i class="fas fa-map-marker-alt me-2"></i> ${estate.location}</p>
                                    
                                    <p class="card-text"><i class="fas fa-ruler-combined me-2"></i>${estate.sqft} sq ft</p>
                                </div>
                                <div class="d-flex flex-wrap justify-content-between align-items-center mt-auto">
                                    <span class="property-price">${estate.price}</span>
                                    <div class="mt-2 mt-sm-0">
                                        <a href="${pageContext.request.contextPath}/estate/details/${estate.id}" class="btn btn-outline-primary me-2">View Details</a>
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
    </c:forEach>
	
</body>
</html>
