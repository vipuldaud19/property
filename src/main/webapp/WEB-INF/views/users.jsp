
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <title>All Registered Users</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container mt-5">
  <h3 class="text-center mb-4">All Registered Users</h3>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Full Name</th>
        <th>Username</th>
        <th>Email</th>
        <th>Phone Number</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="user" items="${users}">
        <tr>
          <td>${user.fullName}</td>
<td>${user.username}</td>
<td>${user.email}</td>
<td>${user.phoneNumber}</td>

        </tr>
      </c:forEach>
      <c:if test="${empty users}">
        <tr>
          <td colspan="4" class="text-center">No users registered yet.</td>
        </tr>
      </c:if>
    </tbody>
  </table>
  <a href="register" class="btn btn-primary mt-3">Register Another User</a>
</div>
</body>
</html>
