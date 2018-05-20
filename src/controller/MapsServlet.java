package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MapsServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> ec = new ArrayList<>();
        List<String> es = new ArrayList<>();

        switch (req.getPathInfo()) {
            case "/google-map":
                es.add("plugins/gmaps/gmaps.js");
                es.add("js/pages/maps/google.js");
                responseView(req, resp, "Google Map", "/pages/maps/google-map.jsp", es, ec);
                break;
            case "/jvector-map":
                ec.add("plugins/jvectormap/jquery-jvectormap-1.2.2.css");
                es.add("plugins/jvectormap/jquery-jvectormap-1.2.2.min.js");
                es.add("plugins/jvectormap/jquery-jvectormap-world-mill-en.js");
                es.add("js/pages/maps/jvectormap.js");
                responseView(req, resp, "JVector Map", "/pages/maps/jvector-map.jsp", es, ec);
                break;
            case "/yandex-map":
                responseView(req, resp, "JVector Map", "/pages/maps/yandex-map.jsp", es, ec);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
