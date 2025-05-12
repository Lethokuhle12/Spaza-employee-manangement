/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.EmployeesFacadeLocal;

/**
 *
 * @author user
 */
public class GetAvgAgeEmpsServlet extends HttpServlet {

    @EJB
    private EmployeesFacadeLocal efl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Double avg=efl.averageAge();
        request.setAttribute("avg", avg);
        RequestDispatcher disp=request.getRequestDispatcher("get_avg_age_emps_outcome.jsp");
        disp.forward(request, response);
                
    }


}
