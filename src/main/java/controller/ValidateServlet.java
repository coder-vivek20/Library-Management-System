package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import dao.UserDao;
import model.User;
@WebServlet("/ValidateServlet")
public class ValidateServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String confirmp = request.getParameter("confirm_password");

      
            if (password.equals(confirmp)) {
                User user = new User();
                user.setName(name);
                user.setEmail(email);
                user.setMobile(mobile);
                user.setAddress(address);
                user.setPassword(password);

                UserDao userDao = new UserDao();
                userDao.saveUser(user);
                response.sendRedirect("login.jsp");
            } else {
                response.getWriter().write("<script>alert('Passwords are not the same. Please check again!');"
                		+ "window.location.href = \"registration.jsp\"; </script>");
               
            }
        } 
	}


