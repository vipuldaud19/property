<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sell Property</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
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
	      width:100%;
	      margin-top: 10px;
	      font-size:20px;
	    }

	    .btn-primary:hover {
	      background-color: #0056b3;
	    }

	    .row1, .row2, .row3 {
	      margin-top: 30px;
	      display: flex;
	      flex-wrap: wrap;
	      justify-content: space-between;
	      margin-bottom: 20px;
	    }

	    .form-field {
	      flex: 1;
	      min-width: 200px;
	    }

	    label {
	      font-weight: bold;
	      color: #333;
	      margin-bottom: 5px;
	    }

	    @media (max-width: 768px) {
	      .row1, .row2, .row3 {
	        flex-direction: column;
	      }
	    }
	  </style>
</head>
<body>
	
	<!-- Navbar -->
	 <nav class="navbar navbar-expand-lg navbar-dark">
	   <div class="container-fluid">
	     <a class="navbar-brand" href="${pageContext.request.contextPath}/">
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
    <h2>List Your Property</h2>
    
    <!-- Important: enctype is required for file uploads -->
	<form action="${pageContext.request.contextPath}/property/submit-property" method="post" enctype="multipart/form-data"onsubmit="return checkform()">

	    <div class="mb-3">
	        <label class="form-label">Title</label>
	        <input type="text" name="title" class="form-control" required/>
	    </div>
	    <div class="mb-3">
	        <label class="form-label">Description</label>
	        <textarea name="description" class="form-control" rows="3" required></textarea>
	    </div>
	    <div class="mb-3">
	        <label class="form-label">Price</label>
	        <input type="number" name="price" class="form-control" required/>
	    </div>
	    <div class="mb-3">
	        <label class="form-label">Address</label>
	        <input type="text" name="address" class="form-control" required/>
	    </div>
	    <div class="mb-3">
	        <label class="form-label">Upload Image</label>
	        <input type="file" name="image" class="form-control" accept="image/*" required/>
	    </div>
	    <div class="mb-3">
	        <label class="form-label">Select For</label>
	        <select name="status" class="form-control" required>
	            <option value="">-- Select --</option>
	            <option value="Rent">Rent</option>
	            <option value="Buy">Buy</option>
				<option value="Rent">plot/land</option>
				            <option value="Buy">commercial</option>
	        </select>
	    </div>
	    <button type="submit" class="btn btn-primary">Submit Property</button>
	</form>
	<script>
	function checkform() {
	 
	      
	       
	      
	       
	       alert("submit sucessfully");
	       return true;
		   }
		   </script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</div>
</body>
</html>
