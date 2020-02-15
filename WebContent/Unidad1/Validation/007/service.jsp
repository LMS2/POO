<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = Unidad1.Validator
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
                request.getParameter("userName") != null &&
                request.getParameter("age") != null && request.getParameter("age").matches("\\D")
            ){

                Validator validator = new Validator();

                String userName = validator.cleanUserName(request.getParameter("userName").toString());
                int age = validator.cleanAge(request.getParameter("age").toString().trim());

                out.print("<span style='color:green;'>Se han limpiado los parárametros recibidos.</span><br>")

                out.print(String.format("<strong>User Name: </strong>%s<br>",userName));
                out.print(String.format("<strong>Age: </strong>%s<br>",age));
            }else{
                out.print("<span style='color:red;'>No existen los parámetros requeridos.</span><br>")
            }
        %>
    </body>
</html>