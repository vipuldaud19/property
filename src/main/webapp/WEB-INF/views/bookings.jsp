<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>All Bookings</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <style>
    .accepted { background-color: #d4edda !important; }   /* Green */
    .declined { background-color: #f8d7da !important; }   /* Red */
  </style>
</head>
<body>
<div class="container mt-5">

  <!-- Switch Button -->
  <div class="d-flex justify-content-end mb-3">
    <a href="/booking" class="btn btn-primary">Go to Booking Page</a>
  </div>

  <h2 class="mb-4 text-center text-success">All Property Bookings</h2>

  <table class="table table-bordered table-striped">
    <thead class="table-dark">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Property Type</th>
        <th>Property Name</th>
        <th>Builder</th>
        <th>Location</th>
        <th>Date</th>
        <th>Special Requests</th>
        <th>Action</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="b" items="${bookings}">
        <tr id="row-${b.id}">
          <td>${b.id}</td>
          <td>${b.firstName} ${b.lastName}</td>
          <td>${b.email}</td>
          <td>${b.phone}</td>
          <td>${b.propertyType}</td>
          <td>${b.propertyName}</td>
          <td>${b.builderName}</td>
          <td>${b.locationName}</td>
          <td>${b.bookingDate}</td>
          <td>${b.specialRequests}</td>
          <td>
            <button class="btn btn-success btn-sm" onclick="updateStatus(${b.id}, 'accepted')">Accept</button>
            <button class="btn btn-danger btn-sm" onclick="updateStatus(${b.id}, 'declined')">Decline</button>
          </td>
          <td id="status-${b.id}" class="fw-bold text-secondary">Pending</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

<script>
  function updateStatus(id, status) {
    let row = document.getElementById("row-" + id);
    let statusCell = document.getElementById("status-" + id);

    if (status === "accepted") {
      row.classList.remove("declined");
      row.classList.add("accepted");
      statusCell.textContent = "Accepted";
      statusCell.classList.remove("text-secondary", "text-danger");
      statusCell.classList.add("text-success");
    } else if (status === "declined") {
      row.classList.remove("accepted");
      row.classList.add("declined");
      statusCell.textContent = "Declined";
      statusCell.classList.remove("text-secondary", "text-success");
      statusCell.classList.add("text-danger");
    }
  }
</script>
</body>
</html>
