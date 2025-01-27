package com;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertion")
public class DataInsertion_Admin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Parse request parameters
            int Roll_No = Integer.parseInt(req.getParameter("Roll_No"));
            String Name = req.getParameter("Name");
            String Fname = req.getParameter("Fname");
            int Room_no = Integer.parseInt(req.getParameter("Room_No"));
            int Row_no = Integer.parseInt(req.getParameter("Row_No"));
            int Chair_no = Integer.parseInt(req.getParameter("Chair_No"));

            // Create entity object
            DataInsertionAdminPojo poa = new DataInsertionAdminPojo();
            poa.setRoll_No(Roll_No);
            poa.setName(Name);
            poa.setFname(Fname);
            poa.setRoom_No(Room_no);
            poa.setRow_No(Row_no);
            poa.setChair_No(Chair_no);

            // Persist entity object
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
            EntityManager em = emf.createEntityManager();
            EntityTransaction et = em.getTransaction();
            et.begin();
            em.persist(poa);
            et.commit();
            em.close();

            // Redirect to success page
            resp.sendRedirect("DataView.jsp");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            // Handle number format exception (invalid integer input)
            resp.getWriter().println("<h1>Please enter valid integer values for Roll_No, Room_No, Row_No, and Chair_No</h1>");
        } catch (Exception e) {
            e.printStackTrace();
            // Handle any other exceptions
            resp.getWriter().println("<h1>Error occurred while processing your request</h1>");
        }
    }
}
