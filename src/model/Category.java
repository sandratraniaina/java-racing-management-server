package model;

import java.io.Serializable;

import annotation.Column;
import annotation.Table;

@Table("category")
public class Category implements Serializable{
    @Column("id")
    String id;
    
    @Column("name")
    String name;

    // Constructors
    public Category() {}
    public Category(String id, String name) {
        setId(id);
        setName(name);
    }

    // Getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}