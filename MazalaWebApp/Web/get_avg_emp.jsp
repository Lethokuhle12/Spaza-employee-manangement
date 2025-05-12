<%-- 
    Document   : get_avg_emp
    Created on : Apr 13, 2025, 12:48:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get average employees age Page</title>
    </head>
    <body>
        <h1>get average employees age</h1>
        <p> Click the button to Get the average age of Employees</p>
        <form action="GetAvgAgeEmpsServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET AVERAGE AGE OF EMPLOYEES"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
