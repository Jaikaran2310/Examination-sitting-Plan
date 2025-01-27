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

@ WebServlet("/AdminDelete")
public class AdminDelete extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	int RollNo= Integer.parseInt(req.getParameter("DeleteId".trim()));
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
    EntityManager em = emf.createEntityManager();
    EntityTransaction et = em.getTransaction();
    
    DataInsertionAdminPojo diap=em.find(DataInsertionAdminPojo.class, RollNo);
    et.begin();
    em.remove(diap);
    et.commit();
    
    RequestDispatcher rd= req.getRequestDispatcher("/DataView.jsp");
    rd.forward(req, resp);
			
}
}
