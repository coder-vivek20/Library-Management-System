<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="dao.UserDao" %>
<%@ page import="model.User" %>
<%@ page import="model.Admin" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
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
        background-color: #333;
        color: #fff;
    }

    .container {
        max-width: 1100px;
        margin: 0 auto;
        padding: 0 1rem;
    }

    
    main {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 2rem;
    }

    .login-container {
        max-width: 400px;
        width: 100%;
        padding: 20px;
        background-color: #444;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .input-group {
        margin-bottom: 20px;
    }

    .input-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .input-group input,
    .input-group select {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .btn {
        display: block;
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        text-align: center;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .btn:hover {
        background-color: #0056b3;
    }

    .register-link {
        text-align: center;
        margin-top: 10px;
    }

    .register-link a {
        color: #007bff;
        text-decoration: none;
        transition: color 0.3s;
    }

    .register-link a:hover {
        color: #0056b3;
    }

   

    @media screen and (max-width: 600px) {
        .login-container {
            max-width: 90%;
        }
    }
</style>
</head>
<body>
     
    <main>
        <div class="login-container">
            <h2>Login Form</h2>
            <form action="#">
                <div class="input-group">
                    <label for="role">Login As:</label>
                    <select id="role" name="role" required>
                        <option value="user">User</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>
                <div class="input-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit" class="btn" name="submit">Login</button>
            </form>
            <%
            if(request.getParameter("submit")!=null){
            	String role = request.getParameter("role");
    	        String username = request.getParameter("username");
    	        String password = request.getParameter("password");

    	        UserDao userDao = new UserDao();
    	        if ("user".equals(role)) {
    	            User user = userDao.validateUser(username, password);
    	            if (user != null) {
    	                response.sendRedirect("index1.jsp");
    	            } else {
    	                response.getWriter().println("<script>alert('Invalid User credentials'); window.location.href='login.jsp';</script>");
    	            }
    	        } else if ("admin".equals(role)) {
    	            Admin admin = userDao.validateAdmin(username, password);
    	            if (admin != null) {
    	                response.sendRedirect("index.jsp");
    	            } else {
    	                response.getWriter().println("<script>alert('Invalid Admin credentials'); window.location.href='login.jsp';</script>");
    	            }
    	        }
            }
            %>
            <div class="register-link">
                <p>Don't have an account? <a href="registration.jsp">Register here</a></p>
            </div>
        </div>
    </main>
       <%@include file="footer.jsp"%>

</body>
</html>
