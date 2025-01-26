<%@ page import="lk.ijse.ecommercewebapp.Dto.ProductDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: udantha
  Date: 1/26/2025
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Shop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            background: linear-gradient(45deg, #1e3c72, #2a5298);
        }

        .navbar-brand {
            font-size: 1.8rem;
            font-weight: 700;
            color: #ffffff !important;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
            font-weight: 500;
        }

        .navbar-nav .nav-link:hover {
            background-color: #ffffff;
            color: #2a5298 !important;
            border-radius: 5px;
        }

        .hero-carousel {
            height: 90vh;
            position: relative;
        }

        .hero-carousel img {
            object-fit: cover;
            height: 100%;
        }

        .carousel-caption {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: #f8f9fa;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
        }

        .carousel-caption .btn-warning {
            background-color: #ff6f61;
            border: none;
        }

        .carousel-caption .btn-warning:hover {
            background-color: #ff856e;
        }

        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-img-top {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .card-title {
            color: #333;
            font-weight: bold;
        }

        .card-text {
            color: #555;
        }

        .btn-danger {
            background-color: #ff6f61;
            border: none;
        }

        .btn-danger:hover {
            background-color: #ff856e;
        }

        .footer {
            background-color: #1e3c72;
            color: #f8f9fa;
            padding: 30px 0;
        }

        .footer a {
            color: #ff6f61;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="admin-login.jsp">E-Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="new-product-list">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="signin.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add-cart.jsp">Cart <span class="badge bg-light text-dark">0</span></a>
                </li>
                <li class="nav-item">
                    <a href="logout.jsp" class="btn btn-warning btn-sm">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Carousel -->
<div id="heroCarousel" class="carousel slide hero-carousel" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="uploads/02.jpg" class="d-block w-100 h-100" alt="Slide 1">
            <div class="carousel-caption">
                <div class="search-container">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Search for products...">
                        <button class="btn btn-warning">Search</button>
                    </div>
                </div>
                <h1>Discover Amazing Deals</h1>
                <p>Your next favorite product is just a click away.</p>
                <a href="new-product-list" class="btn btn-warning">Shop Now</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="uploads/books.avif" class="d-block w-100" alt="Slide 2">
            <div class="carousel-caption">
                <h1>Just in: Holiday Gifts</h1>
                <p>Find the perfect gift for your loved ones.</p>
                <a href="new-product-list" class="btn btn-warning">Shop Now</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="uploads/03.jpg" class="d-block w-100" alt="Slide 3">
            <div class="carousel-caption">
                <h1>Explore Our Collection</h1>
                <p>Everything you need, all in one place.</p>
                <a href="new-product-list" class="btn btn-warning">Shop Now</a>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
    </button>
</div>

<!-- Products Section -->
<div class="container mt-5">
    <h1 class="text-center mb-4">Our Products</h1>

    <%
        // Fetch the product list passed from the servlet
        List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList");
        if (productList != null && !productList.isEmpty()) {
    %>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <%
            for (ProductDTO product : productList) {
        %>
        <div class="col">
            <div class="card h-100">
                <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>">
                <div class="card-body">
                    <h5 class="card-title"><%= product.getProductName() %></h5>
                    <p class="card-text text-muted"><%= product.getProductDescription() %></p>
                    <p class="fw-bold">Price: $<%= product.getProductPrice() %></p>
                    <p>Available: <%= product.getProductQuantity() %> units</p>
                    <form action="cart" method="post">
                        <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">
                        <input type="hidden" name="product_name" value="<%= product.getProductName() %>">
                        <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">
                        <input type="hidden" name="product_quantity" value="1">
                        <input type="hidden" name="product_image" value="<%= product.getImage_path() %>">
                        <button type="submit" class="btn btn-danger">Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
    <% } else { %>
    <div class="alert alert-warning text-center" role="alert">
        No products available at the moment.
    </div>
    <% } %>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container text-center">
        <p>Follow us on:</p>
        <a href="#"><i class="fab fa-facebook fa-lg me-3"></i></a>
        <a href="#"><i class="fab fa-twitter fa-lg me-3"></i></a>
        <a href="#"><i class="fab fa-instagram fa-lg me-3"></i></a>
        <a href="#"><i class="fab fa-linkedin fa-lg"></i></a>
        <p class="mt-3">&copy; 2025 E-Shop. All rights reserved.</p>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

