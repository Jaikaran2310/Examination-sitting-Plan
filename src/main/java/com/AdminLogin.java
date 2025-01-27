package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int Id=Integer.parseInt(req.getParameter("id"));
		String password=req.getParameter("password");
		
		int username = 1234;
	    String userPassword = "Pass";
	    
	    if (Id == username && password.equals(userPassword)) {
            RequestDispatcher rd = req.getRequestDispatcher("/DataView.jsp");
            rd.forward(req, resp);
        }else {
            RequestDispatcher rd = req.getRequestDispatcher("/AdminLogin.jsp");
            rd.include(req, resp);
            PrintWriter pw = resp.getWriter();
            pw.println("<h1>Invalid Credential<h1>");
	}

	}}
