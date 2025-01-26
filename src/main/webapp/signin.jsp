<%--
  Created by IntelliJ IDEA.
  User: udantha
  Date: 1/26/2025
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: radial-gradient(circle, #e3f2fd, #90caf9);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .form-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 420px;
            border: 2px solid #bbdefb;
        }
        .form-title {
            font-size: 26px;
            font-weight: 700;
            text-align: center;
            margin-bottom: 25px;
            color: #0d47a1;
        }
        .form-note {
            font-size: 14px;
            color: #1565c0;
            margin-top: 15px;
            text-align: center;
        }
        .form-note a {
            color: #1e88e5;
            text-decoration: none;
            font-weight: 600;
        }
        .form-note a:hover {
            text-decoration: underline;
        }
        .btn-yellow {
            background-color: #ffab00;
            border-color: #ff6f00;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            padding: 10px 0;
        }
        .btn-yellow:hover {
            background-color: #ff8f00;
        }
        .form-label {
            font-weight: 600;
            color: #1a237e;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #b0bec5;
        }
        .error-message {
            color: #d32f2f;
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2 class="form-title">Sign In</h2>
    <!-- Display error message -->
    <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
    </c:if>
    <form action="check-out.jsp">
        <!-- Email or Phone Field -->
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required>
        </div>
        <!-- Password Field -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
        </div>
        <!-- Submit Button -->
        <button type="submit" class="btn btn-yellow w-100">Sign In</button>
    </form>
    <!-- Create Account -->
    <p class="form-note">
        <strong>New to us?</strong> <a href="signup.jsp">Create your account</a>
    </p>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

