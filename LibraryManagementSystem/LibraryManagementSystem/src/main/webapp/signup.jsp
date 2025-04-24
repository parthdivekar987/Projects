<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Signup | LMS</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: url('assets/img/image2.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #ffffff;
        }

        form {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.5);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #00ffff;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: none;
            border-radius: 5px;
            background: #0f1e3a;
            color: white;
        }

        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background-color: #00ffff;
            color: #000;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0077ff;
            color: #fff;
            box-shadow: 0 0 10px #0077ff, 0 0 20px #0077ff;
        }

        .error-message {
            color: #ff4444;
            margin-bottom: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="signupForm" action="SignupServlet" method="post">
        <h2>Library Management System</h2>
        
        <%-- Display error message if exists --%>
        <% if(request.getAttribute("errorMessage") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>

        <label>Full Name:</label> 
        <input type="text" name="fullname" required>

        <label>Email:</label> 
        <input type="email" name="email" required>

        <label>Username:</label> 
        <input type="text" name="username" required>

        <label>Password:</label> 
        <input type="password" name="password" required> 
        
        <label>Role:</label> 
        <select name="role">
            <option value="user">User</option>
            <option value="librarian">Librarian</option>
        </select> 
        
        <input type="submit" value="Signup">
    </form>
</body>
</html>