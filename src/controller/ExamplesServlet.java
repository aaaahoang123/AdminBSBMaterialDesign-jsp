package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ExamplesServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> es = new ArrayList<>();
        switch (req.getPathInfo()) {
            case "/404":
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
            case "/500":
                req.setAttribute("code", 500);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
            case "/blank":
                responseView(req, resp, "Blank Page", "/pages/examples/blank.jsp", null, null);
                break;
            case "/sign-in":
                req.setAttribute("bodyClass", "login-page");
                es.add("js/pages/examples/sign-in.js");
                responseView(req, resp, "Sign In", "/pages/examples/auths/sign-in.jsp", es, null, "/pages/examples/auths/layout.jsp");
                break;
            case "/sign-up":
                req.setAttribute("bodyClass", "signup-page");
                es.add("js/pages/examples/sign-up.js");
                responseView(req, resp, "Sign Up", "/pages/examples/auths/sign-up.jsp", es, null, "/pages/examples/auths/layout.jsp");
                break;
            case "/forgot-password":
                req.setAttribute("bodyClass", "fp-page");
                es.add("js/pages/examples/forgot-password.js");
                responseView(req, resp, "Forgot Password", "/pages/examples/auths/forgot-password.jsp", es, null, "/pages/examples/auths/layout.jsp");
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
