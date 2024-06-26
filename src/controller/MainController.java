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
import model.Category;
import model.DriverResult;

public class MainController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        try {
            Gson gson = new Gson();
            Dao dao = new Dao("webapps/racing/WEB-INF/context.xml");
            ArrayList<Object> categories = dao.readAll(new Category());

            out.println(gson.toJson(categories));
        } catch (Exception e) {
            e.printStackTrace(out);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String categoryId = request.getParameter("category");
        String viewName = "v_driver_global_ps_total_points";

        if (categoryId != null && categoryId != "") {
            viewName = "v_driver_category_result";
        }

        String query = "SELECT * FROM " + viewName;

        if (categoryId != null && categoryId != "") {
            query += " WHERE driver_category = \'" + categoryId + "\'";
        }

        try {
            Gson gson = new Gson();
            Dao dao = new Dao("webapps/racing/WEB-INF/context.xml");
            ArrayList<Object> result = dao.getSqlUtils().executeQuery(dao.getSqlUtils().getConnection(),
                    new DriverResult(), query);

            out.println(gson.toJson(result));
        } catch (Exception e) {
            e.printStackTrace(out);
        }
    }

}
