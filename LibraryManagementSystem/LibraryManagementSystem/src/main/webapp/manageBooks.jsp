<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DAO.BookDAO, model.Book, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Books</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            margin: 20px; 
        }
        table { 
            width: 100%; 
            border-collapse: collapse; 
            margin-top: 20px; 
        }
        th, td { 
            border: 1px solid #ddd; 
            padding: 8px; 
            text-align: left; 
        }
        th { 
            background-color: #f2f2f2; 
        }
        .action-btns a { 
            margin-right: 5px; 
            text-decoration: none;
            padding: 3px 6px;
            border-radius: 3px;
        }
        .action-btns a:first-child {
            background-color: #4CAF50;
            color: white;
        }
        .action-btns a:last-child {
            background-color: #f44336;
            color: white;
        }
        .add-btn { 
            margin-bottom: 20px; 
        }
        .add-btn a {
            display: inline-block;
            padding: 8px 15px;
            background-color: #0f1e3a;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .add-btn a:hover {
            background-color: #2a3a5a;
        }
        .alert {
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 4px;
        }
        .success {
            background-color: #dff0d8;
            color: #3c763d;
            border: 1px solid #d6e9c6;
        }
        .error {
            background-color: #f2dede;
            color: #a94442;
            border: 1px solid #ebccd1;
        }
    </style>
</head>
<body>
    <h2>Manage Books</h2>
    
    <%-- Display success/error messages --%>
    <% String message = (String) session.getAttribute("message");
       String error = (String) session.getAttribute("error");
       if (message != null) { %>
        <div class="alert success">
            <%= message %>
        </div>
    <% } 
       if (error != null) { %>
        <div class="alert error">
            <%= error %>
        </div>
    <% } 
       // Clear the messages after displaying
       session.removeAttribute("message");
       session.removeAttribute("error"); %>
    
    <div class="add-btn">
        <a href="addBook.jsp">Add New Book</a>
    </div>
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
            List<Book> allBooks = BookDAO.getAllBooks();
            for(Book book : allBooks) { %>
                <tr>
                    <td><%= book.getId() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getGenre() %></td>
                    <td><%= book.getStatus() %></td>
                    <td class="action-btns">
                        <a href="editBook.jsp?id=<%= book.getId() %>">Edit</a>
                        <a href="DeleteBookServlet?id=<%= book.getId() %>" 
                           onclick="return confirm('Are you sure you want to delete this book?')">Delete</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>