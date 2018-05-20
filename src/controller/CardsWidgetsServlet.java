package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @class return the view of all widgets/cards
 * Switch with the pathInfo
 * Hard code the title, content,... because if we work with variable app will throw exceptions
 */
public class CardsWidgetsServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> extraScript = new ArrayList<>();
        extraScript.add("plugins/waitme/waitMe.js");
        switch (req.getPathInfo()) {
            case "/basic":
                req.setAttribute("extraScript", extraScript);
                responseView(req, resp, "Basic Cards", "/pages/widgets/cards/basic.jsp", extraScript, null);
                break;
            case "/colored":
                extraScript.add("js/pages/cards/colored.js");
                responseView(req, resp, "Colored Cards", "/pages/widgets/cards/colored.jsp", extraScript, null);
                break;
            case "/no-header":
                responseView(req, resp, "No Header Cards", "/pages/widgets/cards/no-header.jsp", extraScript, null);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;

        }
    }
}
