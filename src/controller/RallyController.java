package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.google.gson.Gson;

import dao.Dao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Penalty;

public class RallyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String query = "SELECT * FROM v_driver_global_points_penalty";

        try {
            Gson gson = new Gson();
            Dao dao = new Dao("webapps/racing/WEB-INF/context.xml");
            ArrayList<Object> result = dao.getSqlUtils().executeQuery(dao.getSqlUtils().getConnection(),
                    new Penalty(), query);

            out.println(gson.toJson(result));
        } catch (Exception e) {
            e.printStackTrace(out);
        }
    }

    public static void main(String[] args) throws Exception {
        String query = "SELECT * FROM v_driver_global_points_penalty";
        Gson gson = new Gson();
        Dao dao = new Dao("webapps/racing/WEB-INF/context.xml");
        ArrayList<Object> result = dao.getSqlUtils().executeQuery(dao.getSqlUtils().getConnection(),
                new Penalty(), query);

        System.out.println(gson.toJson(result));
    }
}
