package controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("content", "/pages/dashboard.jsp");
        req.setAttribute("title", "Home page");
        List<String> ejs = new ArrayList<>();
        List<String> ec = new ArrayList<>();
        ejs.add("plugins/jquery-countto/jquery.countTo.js");
        ejs.add("plugins/raphael/raphael.min.js");
        ejs.add("plugins/morrisjs/morris.js");
        ejs.add("plugins/chartjs/Chart.bundle.js");
        ejs.add("plugins/flot-charts/jquery.flot.js");
        ejs.add("plugins/flot-charts/jquery.flot.resize.js");
        ejs.add("plugins/flot-charts/jquery.flot.pie.js");
        ejs.add("plugins/flot-charts/jquery.flot.categories.js");
        ejs.add("plugins/flot-charts/jquery.flot.time.js");
        ejs.add("plugins/jquery-sparkline/jquery.sparkline.js");
        ejs.add("js/pages/index.js");
        ec.add("plugins/morrisjs/morris.css");
        req.setAttribute("extraScript", ejs);
        req.setAttribute("extraCss", ec);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
