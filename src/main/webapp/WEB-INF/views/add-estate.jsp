<!DOCTYPE html>
<html>
<head>
    <title>Add Estate</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f6fa;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 500px;
            margin: 50px auto;
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50;
        }

        form label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #34495e;
        }

        form input[type="text"],
        form input[type="number"],
        form textarea,
        form input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        form textarea {
            resize: vertical;
            min-height: 80px;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #3498db;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        button:hover {
            background: #2980b9;
        }

		/* Property Image Container */
		.property-image-container {
		    width: 100%;
		    height: 200px; /* fixed height for uniformity */
		    overflow: hidden;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		}

		.property-image-container img {
		    width: 100%;
		    height: 100%;
		    object-fit: cover; /* maintains aspect ratio, crops if needed */
		    border-radius: 8px;
		}
    </style>
</head>
<body>

    <div class="container">
        <h1>Add New Property</h1>
        <form action="${pageContext.request.contextPath}/estate/save" method="post" enctype="multipart/form-data">
            
            <label>Property Name:</label>
            <input type="text" name="name" required/>

            <label>Builder Name:</label>
            <input type="text" name="builderName" required/>

            <label>Price:</label>
            <input type="number" name="price" step="0.01" required/>

            <label>Location:</label>
            <input type="text" name="location" required/>

            <label>Description:</label>
            <textarea name="description"></textarea>

            <label>Sq. Ft:</label>
            <input type="text" name="sqft"/>

            <label>Floor Plan (Image):</label>
            <input type="file" name="floorPlanImage" accept="image/*" required/>

            <label>FAQ:</label>
            <textarea name="faq"></textarea>

            <label>Main Property Image:</label>
            <input type="file" name="mainImage" accept="image/*" required/>

            <button type="submit">Save Property</button>
        </form>
    </div>

</body>
</html>
