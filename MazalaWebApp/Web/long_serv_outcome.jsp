<%-- 
    Document   : long_serv_outcome
    Created on : Apr 13, 2025, 12:10:33 AM
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
        <title>Longest Service outcome Page</title>
    </head>
    <body>
        <h1>Longest Service outcome </h1>
        <%
            List<Employees> longServ=(List<Employees>)request.getAttribute("longService");
            
        %>
        <p>
            Below is the list of an employee(s) with the longest service.
        </p>
        <table border="1">
            <%
            for(int i=0;i<longServ.size();i++){
                Employees e=longServ.get(i);
                String name=e.getName();
                String gender=e.getGender();
                Integer age=e.getAge();
                Date doh=e.getHireDate();
                
            
            %>
            <tr>
                <td>Name:</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td>Date of Hire:</td>
                <td><%=doh%></td>
            </tr>
            <%}%>
        </table>
         Click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to home page.
    </body>
</html>
