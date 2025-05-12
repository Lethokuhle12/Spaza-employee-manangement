<%-- 
    Document   : add_emp
    Created on : Apr 12, 2025, 11:10:26 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add emp Page</title>
    </head>
    <body>
        <h1>Add Employee</h1>
        <p>
            Enter employee details
        </p>
        <form action="AddEmpServlet.do" method="POST">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Age: </td>
                    <td><input type="text" name="age" /></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                        <select name="gender">
                            <option value="female">Female</option>
                            <option value="male">Male</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Date of Hire: </td>
                    <td><input type="date" name="doh" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD EMPLOYEE" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
