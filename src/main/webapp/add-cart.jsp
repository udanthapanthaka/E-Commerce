<%@ page import="lk.ijse.ecommercewebapp.Dto.CartItemDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: udantha
  Date: 1/26/2025
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #edf6f9;
            padding: 20px;
        }

        .navbar-brand {
            font-size: 2rem;
            font-weight: bold;
            color: #0077b6 !important;
        }

        .navbar-nav .nav-link {
            color: #005f73 !important;
            font-weight: 500;
        }

        .navbar-nav .nav-link:hover {
            color: #023e8a !important;
        }

        .cart-container {
            background: #ffffff;
            padding: 25px;
            border-radius: 15px;
            border: 2px solid #d4e8ed;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .cart-item-card {
            border: 2px solid #d4e8ed;
            margin-bottom: 20px;
            border-radius: 12px;
            background: #f9f9f9;
            transition: transform 0.2s;
        }

        .cart-item-card:hover {
            transform: scale(1.02);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .cart-item-card img {
            border-radius: 10px;
        }

        .cart-summary {
            background: #f1f7fa;
            padding: 20px;
            border-radius: 12px;
            border: 1px solid #d4e8ed;
        }

        .checkout-btn {
            background-color: #0077b6;
            color: #ffffff;
            text-decoration: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 8px;
            display: inline-block;
            font-weight: bold;
        }

        .checkout-btn:hover {
            background-color: #005f73;
        }

        .btn-primary {
            background-color: #00b4d8;
            border-color: #00b4d8;
        }

        .btn-primary:hover {
            background-color: #0096c7;
        }

        .btn-danger {
            background-color: #e63946;
            border-color: #e63946;
        }

        .btn-danger:hover {
            background-color: #d62828;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
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
                    <a class="nav-link" href="add-cart.jsp">Cart <span class="badge bg-info text-dark">0</span></a>
                </li>
                <li>
                    <a href="logout.jsp" class="btn btn-danger">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="cart-container">
        <h1 class="text-center mb-4 text-primary">Your Shopping Cart</h1>
        <form action="index.jsp" class="mb-4">
            <button type="submit" class="btn btn-secondary">Home</button>
        </form>
        <div class="row">
            <%
                List<CartItemDTO> cart = (List<CartItemDTO>) session.getAttribute("cart");
                if (cart != null && !cart.isEmpty()) {
                    for (CartItemDTO item : cart) {
            %>
            <div class="col-md-6 col-lg-4">
                <div class="card cart-item-card">
                    <img src="<%= item.getImage_path() %>" alt="Product Image" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title text-secondary"><%= item.getProductName() %></h5>
                        <p class="card-text">Price: LKR <%= item.getProductPrice() %></p>
                        <form action="cart" method="post" class="d-flex align-items-center mb-3">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="product_id" value="<%= item.getProductId() %>">
                            <input type="number" name="quantity" value="<%= item.getQuantity() %>" min="1" class="form-control me-2" style="max-width: 80px;">
                            <button type="submit" class="btn btn-primary btn-sm">Update</button>
                        </form>
                        <p>Subtotal: LKR <%= item.getSubtotal() %></p>
                        <form action="cart" method="post">
                            <input type="hidden" name="action" value="remove">
                            <input type="hidden" name="product_id" value="<%= item.getProductId() %>">
                            <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                        </form>
                    </div>
                </div>
            </div>
            <%
                }
            } else {
            %>
            <div class="col-12 text-center">
                <p>Your cart is empty.</p>
            </div>
            <%
                }
            %>
        </div>

        <!-- Cart Summary -->
        <div class="cart-summary mt-4">
            <%
                double subtotal = 0;
                if (cart != null) {
                    for (CartItemDTO item : cart) {
                        subtotal += item.getSubtotal();
                    }
                }
            %>
            <h3>Subtotal: <span class="text-info">LKR <%= subtotal %></span></h3>
            <a href="cart.jsp" class="checkout-btn">Proceed to Checkout</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle (includes Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

