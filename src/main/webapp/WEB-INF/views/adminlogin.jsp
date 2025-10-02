<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
		<style>
		        :root {
		            --primary-color: #2c3e50;
		            --secondary-color: #e74c3c;
		            --light-color: #ecf0f1;
		        }
		        
		        body {
		            font-family: Arial, sans-serif;
		            background-color: #f4f4f4;
		            padding-top: 70px;
		            display: flex;
		            flex-direction: column;
		            min-height: 100vh;
		            margin: 0;
		        }
		        
		        .navbar {
		            background-color: var(--primary-color) !important;
		            padding: 10px 0;
		            position: fixed;
		            width: 100%;
		            top: 0;
		            z-index: 1000;
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
		            padding: 8px 15px !important;
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
		        
		        .login-container {
		            background: white;
		            padding: 2rem;
		            border-radius: 8px;
		            box-shadow: 0 0 10px rgba(0,0,0,0.1);
		            width: 100%;
		            max-width: 400px;
		            margin: 2rem auto;
		            flex-grow: 1;
		        }
		        
		        h2 {
		            text-align: center;
		            margin-bottom: 1.5rem;
		            color: #333;
		        }
		        
		        .form-group {
		            margin-bottom: 1.5rem;
		        }
		        
		        label {
		            display: block;
		            margin-bottom: 0.5rem;
		            color: #555;
		            font-weight: 500;
		        }
		        
		        .form-control {
		            width: 100%;
		            padding: 0.75rem;
		            border: 1px solid #ddd;
		            border-radius: 4px;
		            box-sizing: border-box;
		            font-size: 1rem;
		        }
		        
		        .form-control:focus {
		            border-color: #007bff;
		            box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);
		        }
		        
		        .btn-login {
		            width: 100%;
		            padding: 0.75rem;
		            background-color: #007bff;
		            color: white;
		            border: none;
		            border-radius: 4px;
		            cursor: pointer;
		            font-size: 1rem;
		            transition: background-color 0.3s;
		        }
		        
		        .btn-login:hover {
		            background-color: #0056b3;
		        }
		        
		        .error-message {
		            color: #dc3545;
		            font-size: 0.875rem;
		            margin-top: 0.25rem;
		            display: none;
		        }
		        
		        /* Responsive adjustments */
		        @media (max-width: 992px) {
		            .navbar-brand {
		                margin-left: 10px;
		            }
		            .navbar-nav {
		                margin-right: 10px;
		            }
		        }
		        
		        @media (max-width: 768px) {
		            .login-container {
		                padding: 1.5rem;
		                margin: 1rem auto;
		            }
		        }
		    </style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	    <div class="container-fluid">
	        <!-- Brand -->
	        <a class="navbar-brand d-flex align-items-center" href="${pageContext.request.contextPath}/project">
	            <img src="<c:url value='/resources/images/estate1.jpg'/>" alt="Logo" width="60" height="60" class="d-inline-block align-top me-2">
	            <span class="fw-bold fs-5 text-white">ESTATEFINDERS</span>
	        </a>

	        <!-- Toggler/collapsibe Button -->
	        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
	                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	            <span class="navbar-toggler-icon"></span>
	        </button>

	        <!-- Navbar links -->
	        <div class="collapse navbar-collapse" id="navbarNavDropdown">
	            <ul class="navbar-nav ms-auto">
	                <li class="nav-item">
	                    <a class="nav-link" href="${pageContext.request.contextPath}/project">Home</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="${pageContext.request.contextPath}/about">About Us</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="${pageContext.request.contextPath}/login">Login/Register</a>
	                </li>
	                <!-- Dropdown -->
	                <li class="nav-item dropdown">
	                    <a class="nav-link dropdown-toggle" href="#" id="menuDropdown" role="button" data-bs-toggle="dropdown"
	                       aria-expanded="false">Menu</a>
	                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="menuDropdown">
	                        <li><h6 class="dropdown-header">Services</h6></li>
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

	
	
	    <div class="login-container">
	        <h2>Admin Login</h2>
	        <form action="${pageContext.request.contextPath}/adminlogin" method="post">
	            <div class="form-group">
	                <label for="username">Username</label>
	                <input type="text" id="username" name="username" class="form-control" required>
	            </div>
	            <div class="form-group">
	                <label for="password">Password</label>
	                <input type="password" id="password" name="password" class="form-control" required>
	            </div>
	       <button type="submit" class="btn-login">Login</button></a>
	            <c:if test="${not empty error}">
	                <div class="error-message" style="display:block;">${error}</div>
	            </c:if>
			
	        </form>
	    </div>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
