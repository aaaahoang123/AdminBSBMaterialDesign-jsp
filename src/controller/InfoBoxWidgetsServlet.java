package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class InfoBoxWidgetsServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> extraScript = new ArrayList<>();
        extraScript.add("plugins/jquery-countto/jquery.countTo.js");
        extraScript.add("plugins/jquery-sparkline/jquery.sparkline.js");
        switch (req.getPathInfo()) {
            case "/info-box-1":
                extraScript.add("js/pages/widgets/infobox/infobox-1.js");
                responseView(req, resp, "Info Box 1", "/pages/widgets/info-box/info-box-1.jsp", extraScript, null);
                break;
            case "/info-box-2":
                extraScript.add("js/pages/widgets/infobox/infobox-2.js");
                responseView(req, resp, "Info Box 2", "/pages/widgets/info-box/info-box-2.jsp", extraScript, null);
                break;
            case "/info-box-3":
                extraScript.add("js/pages/widgets/infobox/infobox-3.js");
                responseView(req, resp, "Info Box 3", "/pages/widgets/info-box/info-box-3.jsp", extraScript, null);
                break;
            case "/info-box-4":
                extraScript.add("js/pages/widgets/infobox/infobox-4.js");
                responseView(req, resp, "Info Box 4", "/pages/widgets/info-box/info-box-4.jsp", extraScript, null);
                break;
            case "/info-box-5":
                extraScript.add("js/helpers.js");
                extraScript.add("js/pages/widgets/infobox/infobox-5.js");
                responseView(req, resp, "Info Box 5", "/pages/widgets/info-box/info-box-5.jsp", extraScript, null);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
