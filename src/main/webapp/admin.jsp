<%--
  Created by IntelliJ IDEA.
  User: udantha
  Date: 1/26/2025
  Time: 10:38 AM
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
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .form-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 450px;
        }
        .form-title {
            font-size: 26px;
            font-weight: 600;
            color: #444;
            text-align: center;
            margin-bottom: 25px;
        }
        .form-note {
            font-size: 13px;
            color: #666;
            margin-top: 15px;
            text-align: center;
        }
        .btn-custom {
            background: #2575fc;
            color: #ffffff;
            font-weight: bold;
            border: none;
            padding: 10px 0;
            border-radius: 6px;
            transition: background 0.3s ease;
        }
        .btn-custom:hover {
            background: #1a5fb4;
        }
        .form-label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }
        input[type="email"],
        input[type="password"] {
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 6px;
            transition: border-color 0.3s;
        }
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #2575fc;
            box-shadow: 0 0 4px rgba(37, 117, 252, 0.4);
            outline: none;
        }
        .error-message {
            color: #d9534f;
            font-size: 14px;
            text-align: center;
            margin-bottom: 15px;
        }
        .form-note a {
            color: #2575fc;
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
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
        </div>
        <!-- Submit Button -->
        <button type="submit" class="btn btn-custom w-100">Sign In</button>
    </form>
    <!-- Create Account -->
    <p class="form-note">
        <strong>New to us?</strong> <a href="signup.jsp">Create your account</a>
    </p>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
