package model;

import annotation.Column;
import annotation.Table;

@Table("v_driver")
public class Driver {

    @Column("id")
    String id;

    @Column("first_name")
    String firstName;

    @Column("last_name")
    String lastName;

    @Column("nation")
    String nation;

    @Column("constructor")
    String constructor;

    @Column("category")
    String category;

    // Constructors
    public Driver() {
    }

    public Driver(String id, String firstName, String lastName, String nation, String constructor, String category) {
        this.setId(id);
        this.setFirstName(firstName);
        this.setLastName(lastName);
        this.setNation(nation);
        this.setConstructor(constructor);
        this.setCategory(category);
    }

    // Getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firsName) {
        this.firstName = firsName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getConstructor() {
        return constructor;
    }

    public void setConstructor(String constructor) {
        this.constructor = constructor;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

}
