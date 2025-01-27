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

@WebServlet("/StudentSeatView")
public class StudentSeatView extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int roll_no = Integer.parseInt(req.getParameter("rollNo"));

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jaikaran");
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        DataInsertionAdminPojo Diap = em.find(DataInsertionAdminPojo.class, roll_no);
        PrintWriter out = resp.getWriter();
        RequestDispatcher rd = req.getRequestDispatcher("StudentView.jsp");
        rd.include(req, resp);

        out.print("<h1>Seating Details</h1>\r\n" + "\r\n" + "<table>\r\n" + "    <tr>\r\n"
                + "        <th>Room Number </th>\r\n" + "        <th>Row Number</th>\r\n"
                + "        <th>Seat Number</th>\r\n" + "    </tr>\r\n" + "    <tr>\r\n");

        if (Diap != null) {
            out.print("        <td>" + Diap.getRoom_No() + "</td>\r\n" + "        <td>" + Diap.getRow_No() + "</td>\r\n"
                    + "        <td>" + Diap.getChair_No() + "</td>\r\n");
        } else {
            out.print("        <td colspan=\"3\">No seat information found for this student</td>\r\n");
        }

        out.print("    </tr>\r\n" + "</table>");
    }
}
