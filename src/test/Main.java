package test;

import java.sql.Connection;
import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.Dao;
import model.Driver;
import utils.SQLUtils;

public class Main {
    public static void main(String[] args) throws Exception {
        ApplicationContext context = new ClassPathXmlApplicationContext("context.xml");

        Connection c = ((SQLUtils) context.getBean("sql_utils")).getConnection();

        Dao dao = (Dao) context.getBean("dao");
        ArrayList<Object> drivers = dao.readAll(new Driver());
        for (Object object : drivers) {
            Driver driver = ((Driver)object);

            System.out.println(driver.getNation());
        }
    }
}
