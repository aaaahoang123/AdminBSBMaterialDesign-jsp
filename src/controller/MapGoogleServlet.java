package controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MapGoogleServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("content", "pages/map-google.jsp");
        List<String> controller = new ArrayList<>();
        controller.add("https://maps.google.com/maps/api/js?sensor=true");
        controller.add("../assets/plugins/gmaps/gmaps.min.js");
        controller.add("../assets/plugins/gmaps/jquery.gmaps.js");
        req.setAttribute("controllers", controller);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
