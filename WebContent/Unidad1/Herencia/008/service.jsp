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
        <meta name="description" content="Demostración de Herencia en POO">
        <title>BackEnd: Demostración de Herencia en POO</title>
    </head>
    <body>
        <%

        if(
            request.getParameter("htmlTAG") !=null&&
            request.getParameter("htmlTAG").toString().trim().matches("((0)|(1)|(2)|)(3)")&&
            request.getParameter("htmlContent")!=null
            ){
                Validator validator = new Validator();
                int htmlTAG = Integer.parseInt(request.parameter("htmlTAG").toString().trim());
                String htmlContent = validator.cleanHTMLContent(request.getParameter("htmlContent").toString());

                if (htmlTAG == 0){

                    SpanTag span = new SpanTag(htmlContent);
                    span.setStyle("color:green;");
                    out.print(span.print());

                }elseif(htmlTAG == 1){
                    ParagraphTag p = new ParagraphTag(htmlContent);
                    p.setStyle("color:red");
                    out.print(p.print());
                    

                }elseif(htmlTAG == 2){
                    AnghorTag a = new AnchorTag("index.jsp",htmlContent);
                    a.setStyle("color:green;");
                    out.print(a.print());


                }else{
                    DivTag div = new DivTag(htmlContent);
                    div.setStyle("color:green;");
                    out.print(div.print())

                }

        }else{

        }
            String content = "Hola Mundo";
            ParagraphTag p = new ParagraphTag(content);
            p.setStyle("color:red");
            out.print(p.print());
        %>

<%!
public class HTMLTag{
    /**Nombre de etiqueta.*/
    protected String name;

    /**El estilo de la etiqueta.*/
    protected String style;

    public HTMLTag(String name, String style){
        this.name=name;
        this.style=style;
    }

    public void setName(String name){

    }
    public void setStyle(String style){

    }
    public String getName(){returnthis.name}
    public String getStyle(){return this.style}
}
%>

<%!
public class ParagraphTag extends HTMLTag
%>
    </body>
</html>