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
    <title>Admin Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            background: linear-gradient(135deg, #9be15d, #00e3ae);
            font-family: 'Verdana', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            max-width: 450px;
            padding: 40px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .form-container:hover {
            transform: scale(1.02);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
        }
        .form-container h2 {
            margin-bottom: 25px;
            text-align: center;
            color: #333;
            font-weight: bold;
        }
        .form-label {
            font-weight: bold;
            color: #555;
        }
        .form-control {
            border: 2px solid #ced4da;
            border-radius: 8px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .form-control:focus {
            border-color: #4caf50;
            box-shadow: 0 0 8px rgba(76, 175, 80, 0.5);
        }
        .btn-primary {
            background-color: #4caf50;
            border: none;
            border-radius: 50px;
            padding: 12px;
            font-size: 1rem;
            font-weight: bold;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #388e3c;
            box-shadow: 0 5px 15px rgba(76, 175, 80, 0.4);
        }
        .alert {
            font-size: 0.9rem;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Admin Registration</h2>
    <%
        String message = request.getParameter("message");
        String error = request.getParameter("error");
    %>

    <% if (message != null) { %>
    <div class="alert alert-success" role="alert"><%= message %></div>
    <% } else if (error != null) { %>
    <div class="alert alert-danger" role="alert"><%= error %></div>
    <% } %>

    <form action="admin-register-servlet" method="post">
        <input type="hidden" name="role" value="admin">
        <input type="hidden" name="status" value="active">
        <div class="mb-3">
            <label for="userName" class="form-label">Name</label>
            <input type="text" id="userName" name="user_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone</label>
            <input type="text" id="phone" name="phone" class="form-control">
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" id="address" name="address" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>

<script>
    document.addEventListener("DOMContentLoaded", () => {
        <% if (message != null) { %>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '<%= message %>',
            confirmButtonColor: '#4caf50',
            confirmButtonText: 'OK'
        });
        <% } else if (error != null) { %>
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '<%= error %>',
            confirmButtonColor: '#d33',
            confirmButtonText: 'Try Again'
        });
        <% } %>
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

