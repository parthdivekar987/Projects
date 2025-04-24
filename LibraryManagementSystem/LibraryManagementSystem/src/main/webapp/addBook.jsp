<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Book</title>
</head>
<body>
    <h2>Add New Book</h2>
    <form action="AddBookServlet" method="post">
        Title: <input type="text" name="title" required><br><br>
        Author: <input type="text" name="author" required><br><br>
        Genre: <input type="text" name="genre" required><br><br>
        Description: <textarea name="description" required></textarea><br><br>
        ISBN: <input type="text" name="isbn" required><br><br>
        Year: <input type="number" name="year" required><br><br>
        Pages: <input type="number" name="pages" required><br><br>
        Price: <input type="number" step="0.01" name="price" required><br><br>
        Status: 
        <select name="status" required>
            <option value="Available">Available</option>
            <option value="Checked Out">Checked Out</option>
            <option value="Limited">Limited</option>
        </select><br><br>
        <input type="submit" value="Add Book">
    </form>
</body>
</html>