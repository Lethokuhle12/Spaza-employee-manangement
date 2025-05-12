<%-- 
    Document   : num_male_emps_outcome
    Created on : Apr 13, 2025, 1:34:54 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>number male employees outcome Page</title>
    </head>
    <body>
        <h1>number male employees outcome</h1>
        <%
            Long numMaleEmps=(Long)request.getAttribute("numMaleEmps");
        %>
        <p>
            There <b><%=numMaleEmps%></b> male employees in the database.<br>
             Click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to home page.
        </p>
    </body>
</html>
