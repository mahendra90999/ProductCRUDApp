<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <!-- Bootstrap 5.3.2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .product-form {
            background: #fff;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 600px;
        }

        .form-control {
            border-radius: 12px;
        }

        .btn-genz {
            background-color: #6f42c1;
            color: white;
            border-radius: 12px;
            transition: all 0.3s ease;
        }

        .btn-genz:hover {
            background-color: #5a329d;
            color: #fff;
            transform: scale(1.05);
        }

        .btn-outline-danger:hover {
            background-color: #dc3545;
            color: white;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
	
    <form action="${pageContext.request.contextPath }/handle-product" method="post" class="product-form">
    	
        <h2 class="text-center mb-4">Change product Detail</h2>

        <div class="mb-3">
            <label for="name" class="form-label"> Product Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter product name" value="${product.name}" required />
        </div>

        <div class="mb-3">
            <label for="description" class="form-label"> Description</label>
            <textarea rows="4" class="form-control" name="description" id="description" placeholder="Write something cool..."   required>${product.description}</textarea>
        </div>

        <div class="mb-4">
            <label for="price" class="form-label"> Price</label>
            <input type="number" step="0.1" class="form-control" id="price" name="price" placeholder="e.g., 99999" value="${product.price}" required />
        </div>

        <div class="d-flex justify-content-between">
            <a href="${pageContext.request.contextPath }" class="btn btn-outline-danger">⬅️ Back</a>
            <button type="submit" class="btn btn-genz btn-warning"> Update Product</button>
        </div>
    </form>

    <!-- Bootstrap 5 JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
