<%--
  Created by IntelliJ IDEA.
  User: udantha
  Date: 1/26/2025
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #ffafbd, #ffc3a0);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        .login-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 450px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .login-container:hover {
            transform: scale(1.02);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.25);
        }
        .form-control:focus {
            box-shadow: 0 0 8px rgba(255, 99, 132, 0.5);
            border-color: rgba(255, 99, 132, 0.8);
        }
        .btn-primary {
            background-color: #ff6f61;
            border: none;
            font-weight: bold;
            border-radius: 50px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #e4574d;
            box-shadow: 0 5px 15px rgba(255, 111, 97, 0.5);
        }
        .forgot-password {
            font-size: 0.9rem;
            color: #6c757d;
        }
        .forgot-password:hover {
            text-decoration: underline;
            color: #ff6f61;
        }
        .register-link {
            text-align: center;
        }
        .register-link a {
            color: #ff6f61;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        .register-link a:hover {
            color: #e4574d;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2 class="text-center mb-4">Login</h2>
    <form action="admin.jsp" method="get">
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
        </div>
        <div class="d-flex justify-content-between align-items-center mb-3">
            <a href="forgot-password.jsp" class="forgot-password">Forgot Password?</a>
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
    </form>
    <div class="register-link mt-4">
        <p>Don't have an account? <a href="admin-register.jsp">Register now</a></p>
    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

