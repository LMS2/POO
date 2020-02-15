package Unidad1;

/**
    Permite limpiar y validar distintos tipos de parámetros para la gestión de usuarios.
    @author swd
    @version 0.1.0
 */

 public class Validator{
     /**
        Procesa un nombre de usuario y devuelve una cadena álida.
        @param userName El nombre del usuario con caracteres no válidos.
        @return El nombre de usuario limpio de caracteres inválidos. 
      */
      public String cleanUserName(String userName){
          userName = userName.trim().replaceAll("[^\\w]+", "");
          //userName = userName.replaceAll("\\W+", "");
          return userName;
      }

      /**
        Procesa una edad de usuario y devuelve la cadena validada.
        @param age La edad del ususario como una cadena.
        @return 
       */  
      public int cleanAge(String age){
          age = age.trim().replaceAll("\\D+","");
          return Integer.paraseInt(age);
      }
      /**
        Permite limpiar un campo de texto "text area", eliminando posibles etiquetas de HTML en el contenido.
        @param age La edad del ususario como una cadena.
        @return 
       */ 
      public String cleanHTMLContent(String htmlContent){
          htmlContent = htmlContent.trim().replaceAll("</?[^>]+>","");
          return htmlContent;
      }
 }