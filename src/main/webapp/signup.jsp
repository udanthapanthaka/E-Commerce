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
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        .form-container {
            background: #fff;
            border-radius: 15px;
            padding: 40px 30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 450px;
        }
        .form-title {
            font-size: 26px;
            font-weight: bold;
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }
        .form-label {
            font-size: 14px;
            font-weight: 600;
            color: #444;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #ddd;
        }
        .btn-yellow {
            background-color: #ff9900;
            border-color: #cc7a00;
            color: white;
            font-size: 16px;
            padding: 10px;
            border-radius: 8px;
            font-weight: bold;
        }
        .btn-yellow:hover {
            background-color: #e68a00;
        }
        .form-note {
            font-size: 14px;
            color: #555;
            text-align: center;
            margin-top: 20px;
        }
        .form-note a {
            color: #ff9900;
            font-weight: bold;
            text-decoration: none;
        }
        .form-note a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2 class="form-title">Create Account</h2>
    <form action="admin-register-servlet" method="post">
        <input type="hidden" name="role" value="customer">
        <input type="hidden" name="status" value="active">
        <!-- Name Field -->
        <div class="mb-3">
            <label for="name" class="form-label">Your Name</label>
            <input type="text" class="form-control" id="name" name="user_name" placeholder="First and last name" required>
        </div>

        <!-- Email or Phone Field -->
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="Enter your email" required>
        </div>

        <!-- Password Field -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" placeholder="At least 6 characters" required>
            <div class="form-text">Passwords must be at least 6 characters long.</div>
        </div>

        <!-- Re-enter Password Field -->
        <div class="mb-3">
            <label for="repassword" class="form-label">Re-enter Password</label>
            <input type="password" class="form-control" id="repassword" placeholder="Re-enter your password" required>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-yellow w-100">Register</button>
    </form>

    <p class="form-note">
        Already have an account? <a href="signin.jsp">Sign in</a>
    </p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
