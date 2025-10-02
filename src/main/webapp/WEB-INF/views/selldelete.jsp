<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pending Properties</title>
    <style>
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #f4f4f4;
        }
        img {
            max-width: 100px;
            height: auto;
        }
        .btn {
            padding: 6px 12px;
            margin: 2px;
            text-decoration: none;
            color: white;
            border-radius: 4px;
        }
        .accept { background-color: green; }
        .decline { background-color: red; }
    </style>
</head>
<body>
    <h2 style="text-align:center;">Pending Property Requests</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Price</th>
                <th>Address</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="property" items="${properties}">
                <tr>
                    <td>${property.id}</td>
                    <td>${property.title}</td>
                    <td>${property.description}</td>
                    <td>${property.price}</td>
                    <td>${property.address}</td>
                    <td>
                        <c:if test="${not empty property.imagePath}">
                            <img src="${property.imagePath}" alt="Property Image"/>
                        </c:if>
                    </td>
                    <td>
                        <!-- Accept Button -->
                        <form action="${pageContext.request.contextPath}/property/accept/${property.id}" method="post" style="display:inline;">
                            <button type="submit" class="btn accept">Accept</button>
                        </form>
                        <!-- Decline Button -->
                        <form action="${pageContext.request.contextPath}/property/decline/${property.id}" method="post" style="display:inline;">
                            <button type="submit" class="btn decline">Decline</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
