<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%@ page import="dao.UserDao" %>

<%
    // Instantiate UserDao
    UserDao userDao = new UserDao();

    // Retrieve list of users
    List<User> users = userDao.getAllUsers();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Members - Library Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        main {
            flex: 1;
            padding: 2rem 1rem;
        }

        .members-container {
            max-width: 800px;
            margin: 0 auto;
            background: #f4f4f4;
            padding: 2rem;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .members-container h2 {
            margin-bottom: 1rem;
            text-align: center;
        }

        .member {
            padding: 1rem;
            border-bottom: 1px solid #ccc;
        }

        .member:last-child {
            border-bottom: none;
        }

        .member h3 {
            margin-bottom: 0.5rem;
            color: #333;
        }

        .member p {
            color: #666;
        }

      
    </style>
</head>
<body>
    <%@include file="header1.jsp"%>
    <main>
        <div class="members-container">
            <h2>Our Members</h2>
            <% if (users != null) { %>
                <% for (User user : users) { %>
                    <div class="member">
                        <h3>Name: <%= user.getName() %></h3>
                        <p>Email: <%= user.getEmail() %></p>
                        <p>Mobile: <%= user.getMobile() %></p>
                        <p>Address: <%= user.getAddress() %></p>
                    </div>
                <% } %>
            <% } %>
        </div>
    </main>
       <%@include file="footer.jsp"%>
    
</body>
</html>
