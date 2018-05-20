package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MediasServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> ec = new ArrayList<>();
        List<String> es = new ArrayList<>();

        switch (req.getPathInfo()) {
            case "/image-gallery":
                ec.add("plugins/light-gallery/css/lightgallery.css");
                es.add("plugins/light-gallery/js/lightgallery-all.js");
                es.add("js/pages/medias/image-gallery.js");
                responseView(req, resp, "Image Gallery", "/pages/medias/image-gallery.jsp", es, ec);
                break;
            case "/carousel":
                responseView(req, resp, "Image Gallery", "/pages/medias/carousel.jsp", es, ec);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
