<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>My Bookings</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container mt-5">
  <h2 class="mb-4 text-center text-primary">My Bookings</h2>

  <table class="table table-bordered table-striped">
    <thead class="table-dark">
      <tr>
        <th>ID</th>
        <th>Property</th>
        <th>Builder</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="b" items="${bookings}">
        <tr>
          <td>${b.id}</td>
          <td>${b.propertyName}</td>
          <td>${b.builderName}</td>
          <td>${b.email}</td>
          <td>${b.phone}</td>
          <td>
            <c:choose>
              <c:when test="${b.status == 'APPROVED'}">
                <span class="text-success fw-bold">APPROVED</span>
              </c:when>
              <c:when test="${b.status == 'DECLINED'}">
                <span class="text-danger fw-bold">DECLINED</span>
              </c:when>
              <c:otherwise>
                <span class="text-secondary fw-bold">PENDING</span>
              </c:otherwise>
            </c:choose>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
