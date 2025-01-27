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


@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
	 String Full_name =req.getParameter("fullname");
	 int Roll_number = Integer.parseInt(req.getParameter("roll number"));
	 int Phone_number =Integer.parseInt(req.getParameter("phone number"));
	 String Date= req.getParameter("date");
	 String Gender=req.getParameter("gender");
	 String Address=req.getParameter("address");
	 String Password= req.getParameter("password");
	 
	 StudentRegisterPojo srp= new StudentRegisterPojo();
	 srp.setFull_name(Full_name);
	 srp.setRoll_number(Roll_number);
	 srp.setPhone_number(Phone_number);
	 srp.setDate(Date);
	 srp.setGender(Gender);
	 srp.setAddress(Address);
	 srp.setPassword(Password);
	 
	 et.begin();
	 em.persist(srp);
	 et.commit();
	 RequestDispatcher rd= req.getRequestDispatcher("/Login.jsp");
	 rd.forward(req, resp);
	 
	 
		
		
	}

}
