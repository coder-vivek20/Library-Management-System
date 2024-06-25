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
    <title>Manage Members - Library Management System</title>
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
        }

        .member {
            background: #f4f4f4;
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .member h3 {
            margin-bottom: 0.5rem;
            color: #333;
        }

        .member p {
            margin-bottom: 0.5rem;
            color: #666;
        }

        .member button {
            background: #333;
            color: #fff;
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .member button:hover {
            background: #575757;
        }

        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 1rem 0;
        }
    </style>
</head>
<body>
    <%@include file="header1.jsp"%>
    <main>
        <div class="members-container">
            <h2>Manage Members</h2>
            <% if (users != null) { %>
                <% for (User user : users) { %>
                    <div class="member">
                        <h3>Name: <%= user.getName() %></h3>
                        <p>Email: <%= user.getEmail() %></p>
                        <p>Mobile: <%= user.getMobile() %></p>
                        <p>Address: <%= user.getAddress() %></p>
                        
                        <button>Edit</button>
                        <form action="DeleteUserServlet" method="post">
        <input type="hidden" name="userId" value="<%= user.getUid() %>">
        <button type="submit" name="action" value="delete">Delete</button>
    </form>
                    </div>
                <% } %>
            <% } %>
        </div>
    </main>
    <%@include file="footer.jsp"%>
</body>
</html>
