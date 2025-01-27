package com;

import java.io.IOException;

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

@WebServlet("/AdminUpdate")
public class AdminUpdate extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String rollNoParam = req.getParameter("rollNo");
	    String roomNoParam = req.getParameter("roomNo");
	    String rowNoParam = req.getParameter("rowNo");
	    String chairNoParam = req.getParameter("chairNo");

	    // Check if any of the parameters are null or empty
	    if (rollNoParam == null || roomNoParam == null || rowNoParam == null || chairNoParam == null ||
	            rollNoParam.isEmpty() || roomNoParam.isEmpty() || rowNoParam.isEmpty() || chairNoParam.isEmpty()) {
	        // Handle the case where parameters are missing or empty
	        // For example, you could send an error response or redirect the user to an error page
	        // Here, I'm just printing an error message to the console
	        System.err.println("One or more parameters are missing or empty");
	        // You might want to add a proper error response here
	        return;
	    }

	    // Parse parameters into integers
	    int rollNo = Integer.parseInt(rollNoParam);
	    int roomNo = Integer.parseInt(roomNoParam);
	    int rowNo = Integer.parseInt(rowNoParam);
	    int chairNo = Integer.parseInt(chairNoParam);

	    // The rest of your code remains the same
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
	    EntityManager em = emf.createEntityManager();
	    EntityTransaction et = em.getTransaction();

	    DataInsertionAdminPojo poa = em.find(DataInsertionAdminPojo.class, rollNo);

	    poa.setName(req.getParameter("name"));
	    poa.setFname(req.getParameter("fname"));
	    poa.setRoom_No(roomNo);
	    poa.setRow_No(rowNo);
	    poa.setChair_No(chairNo);

	    et.begin();
	    em.persist(poa);
	    et.commit();

	    RequestDispatcher rd = req.getRequestDispatcher("DataView.jsp");
	    rd.forward(req, resp);
	}
}