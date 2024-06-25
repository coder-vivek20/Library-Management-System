<!-- header.jsp -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management System</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .container {
        width: 90%;
        margin: 0 auto;
        max-width: 1200px;
    }

    header {
        background: #333;
        color: #fff;
        padding: 0.5rem 0;
    }

    header .container {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    header h1 {
        font-size: 1.5rem;
    }

    nav ul {
        list-style: none;
        display: flex;
    }

    nav ul li {
        margin-left: 1rem;
    }

    nav ul li a {
        color: #fff;
        text-decoration: none;
        padding: 0.5rem 1rem;
        border-radius: 5px;
        transition: background 0.3s;
    }

    nav ul li a:hover {
        background: #575757;
    }

    @media (max-width: 768px) {
        nav ul {
            flex-direction: column;
        }
    }
</style>
</head>
<body>
<header>
    <div class="container">
        <h1>Library Management System</h1>
        <nav>
            <ul>
                <li><a href="index1.jsp">Home</a></li>
                <li><a href="#">Books</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="ContactUs.jsp">Contact Us</a></li>
                <% if (!request.getRequestURI().endsWith("login.jsp")) { %>
                    <li><a href="login.jsp">Log out</a></li>
                <% } %>
            </ul>
        </nav>
    </div>
</header>
</body>
</html>
