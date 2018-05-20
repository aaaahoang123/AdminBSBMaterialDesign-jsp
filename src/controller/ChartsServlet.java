package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ChartsServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> ec = new ArrayList<>();
        List<String> es = new ArrayList<>();
        switch (req.getPathInfo()) {
            case "/morris":
                ec.add("plugins/morrisjs/morris.css");
                es.add("plugins/raphael/raphael.min.js");
                es.add("plugins/morrisjs/morris.js");
                es.add("js/pages/charts/morris.js");
                responseView(req, resp, "Morris", "/pages/charts/morris.jsp", es, ec);
                break;
            case "/flot":
                es.add("plugins/flot-charts/jquery.flot.js");
                es.add("plugins/flot-charts/jquery.flot.resize.js");
                es.add("plugins/flot-charts/jquery.flot.pie.js");
                es.add("plugins/flot-charts/jquery.flot.categories.js");
                es.add("plugins/flot-charts/jquery.flot.time.js");
                es.add("js/pages/charts/flot.js");
                responseView(req, resp, "Flot", "/pages/charts/flot.jsp", es, ec);
                break;
            case "/chartjs":
                es.add("plugins/chartjs/Chart.bundle.js");
                es.add("js/pages/charts/chartjs.js");
                responseView(req, resp, "Chart JS", "/pages/charts/chartjs.jsp", es, ec);
                break;
            case "/sparkline":
                es.add("plugins/jquery-sparkline/jquery.sparkline.js");
                es.add("js/pages/charts/sparkline.js");
                responseView(req, resp, "Sparkle Line", "/pages/charts/sparkline.jsp", es, ec);
                break;
            case "/jquery-knob":
                es.add("plugins/jquery-knob/jquery.knob.min.js");
                es.add("js/pages/charts/jquery-knob.js");
                responseView(req, resp, "Jquery Knob", "/pages/charts/jquery-knob.jsp", es, ec);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
