package model;

public class Driver {
    String id;
    String firstName;
    String lastName;
    String nation;
    String contructor;
    String category;
    
    // Constructors
    public Driver() {}
    public Driver(String id, String firstName, String lastName, String nation, String constructor, String category) {
        setId(id);
        setFirstName(firstName);
        setLastName(lastName);
        setNation(nation);
        setContructor(constructor);
        setCategory(category);
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
    public String getContructor() {
        return contructor;
    }
    public void setContructor(String contructor) {
        this.contructor = contructor;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
}
