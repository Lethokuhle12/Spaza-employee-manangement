<%-- 
    Document   : get_avg_age_emps_outcome
    Created on : Apr 13, 2025, 1:04:00 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get average age employees outcome Page</title>
    </head>
    <body>
        <h1>get average age employees outcome</h1>
        <%
            Double avg=(Double)request.getAttribute("avg");
            
        %>
        <p>
            There average age of Mamazala's work force is <b><%=avg%></b> years old.<br>
            Click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to home page.
        </p>
    </body>
</html>
