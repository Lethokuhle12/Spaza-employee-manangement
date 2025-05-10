/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.EmployeesFacadeLocal;
import za.ac.tut.entities.Employees;

/**
 *
 * @author user
 */
public class AddEmpServlet extends HttpServlet {

    @EJB
    private EmployeesFacadeLocal efl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name=request.getParameter("name");
            Integer age=Integer.parseInt(request.getParameter("age"));
            String doh=request.getParameter("doh");
            SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
            Date date=df.parse(doh);
            String gender=request.getParameter("gender");
            
            
            Employees employee=createEmployee(name,age,gender,date);
            efl.create(employee);
            
            RequestDispatcher disp=request.getRequestDispatcher("add_outcome.jsp");
            disp.forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(AddEmpServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private Employees createEmployee(String name, Integer age, String gender, Date date) {

        Employees e=new Employees();
        e.setAge(age);
        e.setName(name);
        e.setGender(gender);
        e.setHireDate(date);
        
        return e;
    }


}
