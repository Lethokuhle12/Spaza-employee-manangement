/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Employees;

/**
 *
 * @author user
 */
@Stateless
public class EmployeesFacade extends AbstractFacade<Employees> implements EmployeesFacadeLocal {
    @PersistenceContext(unitName = "MazalaEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EmployeesFacade() {
        super(Employees.class);
    }

    @Override
    public List<Employees> longestService() {
        Query query=em.createQuery("SELECT e FROM Employees e WHERE e.hireDate =(SELECT MIN(emp.hireDate) FROM Employees emp)");
        List<Employees>longestService=query.getResultList();
        return longestService;
    }

    @Override
    public Long cntFemaleEmployees() {
        Query query=em.createQuery("SELECT COUNT(e) FROM Employees e WHERE e.gender='female'");
        Long cntFemales=(Long)query.getSingleResult();
        return cntFemales;
    }

    @Override
    public Long cntMaleEmployees() {
        Query query=em.createQuery("SELECT COUNT(e) FROM Employees e WHERE e.gender='male'");
        Long cntMales=(Long)query.getSingleResult();
        return cntMales;
    }

    @Override
    public List<Employees> youngestEmployee() {
        Query query=em.createQuery("SELECT e FROM Employees e WHERE e.age = (SELECT MIN(emp.age) FROM Employees emp)");
        List<Employees> youngestEmp=query.getResultList();
        return  youngestEmp;
    }

    @Override
    public Double averageAge() {
        Query query=em.createQuery("SELECT AVG(e.age) FROM Employees e ");
        Double avg=(Double)query.getSingleResult();
        return avg;
    }
    
}
