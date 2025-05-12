<%-- 
    Document   : num_female_emp_outcome
    Created on : Apr 13, 2025, 1:12:04 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>number female employees outcome Page</title>
    </head>
    <body>
        <h1>number female employees outcome</h1>
        <%
            Long  numFemaleEmps=(Long)request.getAttribute("numFemaleEmps");
        %>
        <p>
            There are <b><%=numFemaleEmps%></b> females employees in the database.<br>
             Click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to home page.
        </p>
    </body>
</html>
