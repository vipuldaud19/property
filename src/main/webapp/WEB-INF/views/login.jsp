<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Login</title>

<!-- Bootstrap CSS -->
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
    background-color: white;
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

.navbar-nav .nav-item {
    margin-right: 15px;
}

.navbar-nav .nav-item:last-child {
    margin-right: 0;
}

.form-container {
    max-width: 500px;
    margin: 80px auto;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0,0,0,0.3);
    color: black;
}

h1 {
    text-align: center;
    margin-bottom: 30px;
    font-size: 32px;
    color: #333;
}

form label {
    display: block;
    margin-bottom: 8px;
    font-size: 16px;
    font-weight: bold;
}

form input[type="text"],
form input[type="email"],
form input[type="password"] {
    width: 100%;
    padding: 10px;
    font-size: 15px;
    color: #333;
    background-color: #f9f9f9;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 20px;
}

form input[type="submit"] {
    width: 100%;
    padding: 12px;
    font-size: 16px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

form input[type="submit"]:hover {
    background-color: #0056b3;
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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        s
</nav>

<!-- Login Form -->
<div class="form-container">
    <h1>Login</h1>

    <c:if test="${not empty error}">
        <div class="error text-danger mb-2">${error}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post"onsubmit="return checkform()">
        <label for="email">Email ID:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required />

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required />

        <input type="submit" value="Login" />
    </form>

    <div class="text-center mt-3">
        Don't have an account? <a href="${pageContext.request.contextPath}/register">Register here</a>
    </div>
</div>
<script>
      function checkform() {
    
          var email = document.getElementById("email").value;
          var pass = document.getElementById("password").value;
       
          
          if ( email === "" || pass === "" ) {
              alert("All fields of the form are required");
              return false;
          }
          
         
          
          alert("Login Sucessfully!");
          return true;
      }
  </script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
