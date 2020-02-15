package Unidad1;

public class HTMLTag{
    /**Nombre de etiqueta.*/
    protected String name;

    /**El estilo de la etiqueta.*/
    protected String style;

    protected String content;

    public HTMLTag(){
        this.name="";
        this.style="";
        this.content="";
    }

    public HTMLTag(String name, String style, String content){
        
        /**hacer constructores */
        
        /**Nombre */
        this.name=name;
        this.style=style;
        this.content=content;
    }

    public void setName(String name){this.name=name}
    public void setStyle(String style){this.style=style}
    public void setContet(String style){this.content=content}
    public String getName(){returnthis.name}
    public String getStyle(){return this.style}

    public String print(){

        StringBuilder styleTag = new StringBuilder("");

        if (this.style.length()>0){
            styleTag.append(" style='");
            styleTag.append(this.style);
            styleTag.append("'");
        }
        StringBuilder result = new StringBuilder(String.format("<%s%s>",this.name,styleTag));
        result.append(this.content);
        result.append(String.format("<%s>",this.name));
        return result.toString();
    }
}