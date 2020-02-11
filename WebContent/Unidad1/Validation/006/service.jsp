<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
 <%
 String user = "Programación Orientada a Objetos";
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="swd">
        <meta name="description" content="Ejemplo de formulario web">
    </head>
    <body>
        <%
            //Si el usuario envía el formulario correctamente
            if(request.getParameter("fullName")!=null
            && request.getParameter("fullName").toString().trim().matches("^([A-ZÁÉÍÓÚñ][a-záéíóúñü]{2,})([A-ZÁÉÍÓÚñ][a-záéíóúñü]{2,}){1,3}$") 
            && request.getParameter("age")!=null
            && request.getParameter("age").toString().trim().matches("^((1[6-9])|([2-9]\\d))$")){
                //El formulario es válido
                String fullName = request.getParameter("fullName").toString().trim()
                int age = Integer.parseInt(request.getParameter("age").toString().trim())
                
                //Crea una instancia del usuario.
                User user = new User(fullName,age);

                //...
                out.print("<span style='color:green;'>Los parámetros son válidos.</span>")
            }else{
                out.print("<span style='color:red;'>Los parámetros ingresados no son válidos.</span>")
            }
            
        %>
    </body>
</html>