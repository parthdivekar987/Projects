<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DAO.BookDAO, model.Book" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
</head>
<body>
    <h2>Edit Book</h2>
    <% 
    String id = request.getParameter("id");
    Book book = BookDAO.getBookById(Integer.parseInt(id));
    %>
    <form action="UpdateBookServlet" method="post">
        <input type="hidden" name="id" value="<%= book.getId() %>">
        Title: <input type="text" name="title" value="<%= book.getTitle() %>" required><br><br>
        Author: <input type="text" name="author" value="<%= book.getAuthor() %>" required><br><br>
        Genre: <input type="text" name="genre" value="<%= book.getGenre() %>" required><br><br>
        Description: <textarea name="description" required><%= book.getDescription() %></textarea><br><br>
        ISBN: <input type="text" name="isbn" value="<%= book.getIsbn() %>" required><br><br>
        Pages: <input type="number" name="pages" value="<%= book.getPages() %>" required><br><br>
        Price: <input type="number" step="0.01" name="price" value="<%= book.getPrice() %>" required><br><br>
        Status: 
        <select name="status" required>
            <option value="Available" <%= "Available".equals(book.getStatus()) ? "selected" : "" %>>Available</option>
            <option value="Checked Out" <%= "Checked Out".equals(book.getStatus()) ? "selected" : "" %>>Checked Out</option>
            <option value="Limited" <%= "Limited".equals(book.getStatus()) ? "selected" : "" %>>Limited</option>
        </select><br><br>
        <input type="submit" value="Update Book">
    </form>
</body>
</html>