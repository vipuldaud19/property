<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!Doctype
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
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
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

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

    h3 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }

    .container {
        max-width: 800px;
        height: auto;
        margin: 30px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .form-label {
        font-weight: bold;
    }

    .form-control {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .btn-primary {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        margin-top: 10px;
        font-size: 20px;
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }

    .form-row {
        display: flex;
        flex-wrap: wrap;
        width: 100%;
        gap: 20px;
        margin-bottom: 15px;
    }

    .form-field {
        flex: 1;
        min-width: 200px;
    }

    @media (max-width: 768px) {
        .form-row {
            flex-direction: column;
        }
    }
</style>

<!-- Navbar -->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Property Booking Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-dark">
		    <div class="container-fluid">
		      <a class="navbar-brand" href="${pageContext.request.contextPath}/project">
		        <img src="<c:url value='/resources/images/estate1.jpg' />"  alt="Logo" width="60" class="d-inline-block align-top">
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
		            <a class="nav-link" href="${pageContext.request.contextPath}/login" style="margin-right:30px;">Login/Register</a>
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
        <h2 class="mb-4 text-center text-primary">Book a Property</h2>
        
        <form action="booking" method="post" onsubmit="return checkform()">
            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">First Name</label>
                    <input type="text" name="firstName" class="form-control" required>
                </div>
                <div class="col">
                    <label class="form-label">Last Name</label>
                    <input type="text" name="lastName" class="form-control" required>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Phone</label>
                <input type="tel" name="phone" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Property Type</label>
                <select name="propertyType" class="form-select" required>
                    <option value="">Select</option>
                    <option value="Apartment">Apartment</option>
                    <option value="Villa">Villa</option>
                    <option value="Plot">Land/Plot</option>
                    <option value="Commercial">Commercial</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Property Name</label>
                <input type="text" name="propertyName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Builder Name</label>
                <input type="text" name="builderName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Location</label>
                <input type="text" name="locationName" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Preferred Booking Date</label>
				<input type="date" name="bookingDate" value="${booking.bookingDate}" />

            </div>

            <div class="mb-3">
                <label class="form-label">Special Requests</label>
                <textarea name="specialRequests" class="form-control"></textarea>
            </div>

            <div class="text-center">
                <button class="btn btn-primary" type="submit">Submit Booking</button>
            </div>
        </form>
    </div>
	<script>
	  function checkform() {
	   

	  
		alert("Booking  Sucessfully!");
		         return true;
	  }
	</script>
	<!-- Bootstrap JS Bundle -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
