package test;

import java.util.ArrayList;

import dao.Dao;
import model.Driver;

public class Main {
    public static void main(String[] args) throws Exception {
        Dao dao = new Dao("config\\context.xml");
        ArrayList<Object> drivers = dao.readAll(new Driver());
        for (Object object : drivers) {
            Driver driver = ((Driver)object);

            System.out.println(driver.getNation());
        }
    }
}
