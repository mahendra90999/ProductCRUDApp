
<%@include file="base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>

    <!-- Bootstrap 5.3.2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome 6 CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            min-height: 100vh;
            padding-top: 156px;
        }

        .table-container {
            background: #ffffff;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        table {
            border-radius: 12px;
            overflow: hidden;
        }

        thead {
            background-color: #6f42c1;
            color: white;
        }

        .btn-add {
            background-color: #20c997;
            border: none;
            border-radius: 10px;
            font-weight: bold;
        }

        .btn-add:hover {
            background-color: #17a589;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<div class="container table-container">
    <h2 class="text-center mb-4">Product Dashboard</h2>

    <div class="table-responsive">
        <table class="table table-bordered table-striped text-center align-middle">
            <thead>
                <tr>
                    <th scope="col"> S.No</th>
                    <th scope="col"> Product Name</th>
                    <th scope="col"> Description</th>
                    <th scope="col"> Price</th>
                    <th scope="col"> Action</th>
                </tr>
            </thead>
            <tbody>
            
             <c:forEach var="product" items="${products}" varStatus="loop">
                <tr>
                    <td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>

                    <td>
                        <a href="update/${product.id}" class="btn btn-sm btn-primary"><i class="fas fa-pen-nib"></i> Update</a>
                        <a href="delete/${product.id}" class="btn btn-sm btn-danger"><i class="fa fa-sharp-duotone fa-solid fa-trash"></i> Delete</a>
                    </td>
                </tr>
                <!-- More dynamic rows here -->
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="text-center mt-4">
        <a href="add_product" class="btn btn-add px-4 py-2"> Add New Product</a>
    </div>
</div>

<!-- Bootstrap 5 JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
