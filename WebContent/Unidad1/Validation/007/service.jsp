<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
 <%
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="swd">
        <meta name="description" content="Limpieza de parárametros usando POO">
        <title>Limpieza de parárametros usando POO</title>
    </head>
    <body>
        <%
            if (
                request.getParameter("fulName") != null &&
                request.getParameter("age") != null
            ){

                Validator validator = new Validator();

                String userName = validator.cleanUserName(request.getParameter("userName").toString());
                int age = validator.cleanAge(request.getParameter("age").toString().trim());

                out.print("<span style='color:green;'>Se han limpiado los parárametros recibidos.</span><br>")

                out.print("<strong>User Name: </strong>%s<br>",userName);
                out.print("<strong>Age: </strong>%s<br>",age);
            }else{
                out.print("<span style='color:red;'>No existen los parámetros requeridos.</span><br>")
            }
        %>
    </body>
</html>