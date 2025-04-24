<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login | LMS</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: url('assets/img/sticker.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: white;
        }

        form {
            background: rgba(0,0,0,0.7);
            padding: 40px;
            border-radius: 15px;
            width: 350px;
            box-shadow: 0 0 20px cyan;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: cyan;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            background: #0f1e3a;
            color: white;
            border: none;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: cyan;
            color: black;
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0077ff;
            color: white;
            box-shadow: 0 0 10px #0077ff, 0 0 20px #0077ff;
        }

        .error-message {
            color: #ff4444;
            text-align: center;
            margin-bottom: 15px;
        }
        
        .signup-link {
            text-align: center;
            margin-top: 15px;
        }
        
        .signup-link a {
            color: cyan;
            text-decoration: none;
        }
        
        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form action="LoginServlet" method="post">
        <h2>Login</h2>
        
        <%-- Error message display --%>
        <% if(request.getAttribute("errorMessage") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>

        <label>Username:</label>
        <input type="text" name="username" required>

        <label>Password:</label>
        <input type="password" name="password" required>

        <input type="submit" value="Login">
        
        <div class="signup-link">
            <a href="signup.jsp">Don't have an account? Sign up</a>
        </div>
    </form>
</body>
</html>