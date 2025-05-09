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
import za.ac.tut.entities.Employee;

/**
 *
 * @author proml
 */
@Stateless
public class EmployeeFacade extends AbstractFacade<Employee> implements EmployeeFacadeLocal {

    @PersistenceContext(unitName = "EmployeesEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EmployeeFacade() {
        super(Employee.class);
    }
     
    @Override
    public List<Employee> gelongestService() {
        Query query = em.createQuery("SELECT e FROM Employee e WHERE e.dateOfHire = (SELECT MIN(emp.dateOfHire) FROM Employee emp)");

        List<Employee> longest =query.getResultList();
        return longest;
    }
    

    @Override
    public Long cntFemaleEmployees() {
       
        Query query=em.createQuery("SELECT COUNT(e) FROM Employee e WHERE e.gender='F'");
        Long cnt=(Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public Long cntMaleEmployees() {
        
         Query query=em.createQuery("SELECT COUNT(e) FROM Employee e WHERE e.gender='M'");
        Long cnt=(Long)query.getSingleResult();
        return cnt;
        
    }

    @Override
    public List<Employee> youngestEmployee() {
        
        Query query=em.createQuery("SELECT e FROM Employee e WHERE e.age=(SELECT MIN(emp.age) FROM Employee emp )");
        List<Employee> young=(List<Employee>)query.getResultList();
        return young;
        
        }

    @Override
    public Double averageAge() {
        
        Query query=em.createQuery("SELECT AVG(e.age) FROM Employee e");
        Double cnt=(Double)query.getSingleResult();
        return cnt;
    }

    
}
