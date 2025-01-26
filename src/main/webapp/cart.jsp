<%--
  Created by IntelliJ IDEA.
  User: udantha
  Date: 1/26/2025
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Hero Section Styling */
        .hero {
            height: 100vh;
            background: linear-gradient(135deg, #FFDEE9 0%, #B5FFFC 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            text-align: center;
            color: #000;
        }

        /* Text and Buttons */
        .hero-content {
            max-width: 800px;
            padding: 20px;
        }

        .hero h1 {
            font-size: 4rem;
            font-weight: 700;
            color: #343a40;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            line-height: 1.8;
            color: #555;
        }

        .btn-custom {
            padding: 12px 25px;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            transition: all 0.3s ease-in-out;
        }

        .btn-custom-primary {
            background-color: #28a745;
            color: #fff;
        }

        .btn-custom-primary:hover {
            background-color: #218838;
            box-shadow: 0px 6px 12px rgba(40, 167, 69, 0.3);
        }

        .btn-custom-outline {
            border: 2px solid #343a40;
            color: #343a40;
            background-color: transparent;
        }

        .btn-custom-outline:hover {
            background-color: #343a40;
            color: #fff;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #fff;
            border-bottom: 2px solid #f8f9fa;
        }

        .navbar-brand {
            font-size: 1.75rem;
            font-weight: bold;
            color: #28a745;
        }

        .navbar-brand:hover {
            color: #218838;
        }

        .navbar-nav .nav-link {
            font-size: 1rem;
            font-weight: 500;
            color: #343a40;
        }

        .navbar-nav .nav-link:hover {
            color: #28a745;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg py-3">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">E-Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About</a></li>
                <li class="nav-item"><a class="nav-link" href="signin.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content text-center">
        <h1>Welcome to E-Shop</h1>
        <p>Explore amazing products and enjoy exclusive deals customized for you!</p>
        <div>
            <a href="signup.jsp" class="btn btn-custom btn-custom-primary me-2">Sign Up Now</a>
            <a href="signin.jsp" class="btn btn-custom btn-custom-outline">Sign In</a>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
