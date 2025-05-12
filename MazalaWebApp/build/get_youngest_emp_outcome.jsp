<%-- 
    Document   : get_youngest_emp_outcome
    Created on : Apr 13, 2025, 12:34:00 PM
    Author     : user
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Employees"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get youngest employee outcome Page</title>
    </head>
    <body>
        <h1>get youngest employee outcome</h1>
        <%
            List<Employees> youngest=(List<Employees>)request.getAttribute("youngest");
        %>
        <p>
            Below is the youngest employee in the database.
        </p>
        <table>
            <%
            for(int i=0;i<youngest.size();i++){
                Employees e=youngest.get(i);
                String name=e.getName();
                Integer age=e.getAge();
                String gender=e.getGender();
                Date doh=e.getHireDate();
            
            %>
            <tr>
                <td>Name: </td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Age: </td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td>Gender: </td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td>Date of Hire: </td>
                <td><%=doh%></td>
            </tr>
            <%}%>
        </table>
        Click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to home page.
    </body>
</html>
