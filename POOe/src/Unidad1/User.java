package Unidad1;

/**
    Representa a un usuario conectado.
    @author swd
    @version 0.1.0
 */

public class User{
    private String fullName;

    private int age;

    public User(String fullName, int age){
        this.fullName = fullName;
        this.age = age;
    }

    public int getAge(){
        return age;
    }

    public String getFullName(){
        return fullName;
    }
}