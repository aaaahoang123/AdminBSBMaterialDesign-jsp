package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class UIServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> es = new ArrayList<>();
        List<String> ec = new ArrayList<>();
        switch (req.getPathInfo()) {
            case "/alerts":
                responseView(req, resp, "Alerts", "/pages/ui/alerts.jsp", es, ec);
                break;
            case "/animations":
                es.add("js/pages/ui/animations.js");
                ec.add("plugins/bootstrap-select/css/bootstrap-select.css");
                responseView(req, resp, "Animation", "/pages/ui/animations.jsp", es, ec);
                break;
            case "/badges":
                responseView(req, resp, "Badges", "/pages/ui/badges.jsp", es, ec);
                break;
            case "/breadcrumbs":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "Breadcrumbs", "/pages/ui/breadcrumbs.jsp", es, ec);
                break;
            case "/buttons":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "Buttons", "/pages/ui/buttons.jsp", es, ec);
                break;
            case "/collapse":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "Collapse", "/pages/ui/collapse.jsp", es, ec);
                break;
            case "/colors":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "Colors", "/pages/ui/colors.jsp", es, ec);
                break;
            case "/dialogs":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                es.add("plugins/sweetalert/sweetalert.min.js");
                es.add("js/pages/ui/dialogs.js");
                ec.add("plugins/sweetalert/sweetalert.css");
                responseView(req, resp, "Dialogs", "/pages/ui/dialogs.jsp", es, ec);
                break;
            case "/icons":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "Icons", "/pages/ui/icons.jsp", es, ec);
                break;
            case "/labels":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "Labels", "/pages/ui/labels.jsp", es, ec);
                break;
            case "/list-group":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "List Group", "/pages/ui/list-group.jsp", es, ec);
                break;
            case "/media-object":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                responseView(req, resp, "Media Object", "/pages/ui/media-object.jsp", es, ec);
                break;
            case "/modals":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                es.add("js/pages/ui/modals.js");
                responseView(req, resp, "Modals", "/pages/ui/modals.jsp", es, ec);
                break;
            case "/notifications":
                es.add("plugins/bootstrap-notify/bootstrap-notify.js");
                es.add("js/pages/ui/notifications.js");
                responseView(req, resp, "Notifications", "/pages/ui/notifications.jsp", es, ec);
                break;
            case "/pagination":
                responseView(req, resp, "Pagination", "/pages/ui/pagination.jsp", es, ec);
                break;
            case "/preloaders":
                responseView(req, resp, "Preloaders", "/pages/ui/preloaders.jsp", es, ec);
                break;
            case "/progressbars":
                responseView(req, resp, "Progressbars", "/pages/ui/progressbars.jsp", es, ec);
                break;
            case "/range-sliders":
                es.add("plugins/ion-rangeslider/js/ion.rangeSlider.js");
                es.add("js/pages/ui/range-sliders.js");
                ec.add("plugins/ion-rangeslider/css/ion.rangeSlider.css");
                ec.add("plugins/ion-rangeslider/css/ion.rangeSlider.skinFlat.css");
                responseView(req, resp, "Range Sliders", "/pages/ui/range-sliders.jsp", es, ec);
                break;
            case "/sortable-nestable":
                es.add("plugins/nestable/jquery.nestable.js");
                es.add("js/pages/ui/sortable-nestable.js");
                ec.add("plugins/nestable/jquery-nestable.css");
                responseView(req, resp, "Sortable Nestable", "/pages/ui/sortable-nestable.jsp", es, ec);
                break;
            case "/tabs":
                responseView(req, resp, "Tabs", "/pages/ui/tabs.jsp", es, ec);
                break;
            case "/thumbnails":
                responseView(req, resp, "Thumbnails", "/pages/ui/thumbnails.jsp", es, ec);
                break;
            case "/tooltips-popovers":
                es.add("js/pages/ui/tooltips-popovers.js");
                responseView(req, resp, "Tooltips Popovers", "/pages/ui/tooltips-popovers.jsp", es, ec);
                break;
            case "/waves":
                responseView(req, resp, "Waves", "/pages/ui/waves.jsp", es, ec);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
