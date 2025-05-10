<%-- 
    Document   : get_youngest_emp
    Created on : Apr 13, 2025, 12:20:46 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get youngest employees Page</title>
    </head>
    <body>
        <h1>get youngest employees</h1>
        <p>
            Click the button to get youngest employee(s).
        </p>
        <form action="GetYoungestEmpServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET YOUNGEST EMPLOYEE" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
