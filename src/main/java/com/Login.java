package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Login")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    try {
	        int rollNo = Integer.parseInt(req.getParameter("Roll"));
	        String password = req.getParameter("password");
	        
	        HttpSession session=req.getSession();  
	        session.setAttribute("Roll",rollNo);

	        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
	        EntityManager em = emf.createEntityManager();
	        EntityTransaction et = em.getTransaction();

	        StudentRegisterPojo srp = em.find(StudentRegisterPojo.class, rollNo);
	        
	        if (srp != null) {
	            String pass = srp.getPassword();
	            
	            if (password.equals(pass)) {
	                RequestDispatcher rd = req.getRequestDispatcher("/StudentView.jsp");
	                rd.forward(req, resp);
	            } else {
	                RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
	                rd.include(req, resp);
	                PrintWriter pw = resp.getWriter();
	                pw.println("<h1>Invalid Credential<h1>");
	            }
	        } else {
	            // Handle case when entity is not found
	            RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
	            rd.include(req, resp);
	            PrintWriter pw = resp.getWriter();
	            pw.println("<h1>User not found<h1>");
	        }
	    } catch (NumberFormatException e) {
	        // Handle the case when rollNo parameter cannot be parsed into an integer
	        RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
	        rd.include(req, resp);
	        PrintWriter pw = resp.getWriter();
	        pw.println("<h1>Invalid Roll Number<h1>");
	    }
	}



}
