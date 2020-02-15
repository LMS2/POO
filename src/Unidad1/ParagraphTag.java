package Unidad1;

/**
    Genera una etiqueta <p></p> que representa un párrafo en HTML.
    @author
 */

public class ParagraphTag extends HTMLTag{

    public ParagraphTag(){
        this name = "p"
    }


    public ParagraphTag(String content){
        this.name = "p";
        this.content = content;

    }
}