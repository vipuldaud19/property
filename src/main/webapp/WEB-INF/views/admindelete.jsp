<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Properties</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { font-family: Arial; background: #f5f6fa; padding: 20px; }
        h1 { text-align: center; margin-bottom: 30px; }
        table { width: 100%; max-width: 1000px; margin: auto; background: #fff; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); overflow: hidden; }
        th { background: #3498db; color: white; padding: 12px; }
        td { padding: 10px; vertical-align: middle; }
        tr:nth-child(even) { background: #f2f2f2; }
        .btn-delete { background: #e74c3c; color: white; border: none; padding: 6px 12px; border-radius: 6px; cursor: pointer; }
        .btn-delete:hover { background: #c0392b; }
        .property-image { width: 100px; height: 60px; object-fit: cover; border-radius: 4px; }
    </style>
</head>
<body>
    <h1>Manage Properties</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Builder</th>
                <th>Location</th>
                <th>Price</th>
                <th>Main Image</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="estate" items="${estates}">
                <tr>
                    <td>${estate.id}</td>
                    <td>${estate.name}</td>
                    <td>${estate.builderName}</td>
                    <td>${estate.location}</td>
                    <td>${estate.price}</td>
                    <td>
                        <c:if test="${not empty estate.mainImagePath}">
                            <img src="${estate.mainImagePath}" class="property-image" alt="${estate.name}">
                        </c:if>
                    </td>
                    <td>
                        <form action="${pageContext.request.contextPath}/estate/delete/${estate.id}" method="post"
                              onsubmit="return confirm('Are you sure you want to delete this property?');">
                            <button type="submit" class="btn-delete">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
