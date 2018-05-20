package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TablesServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> es = new ArrayList<>();
        List<String> ec = new ArrayList<>();

        switch (req.getPathInfo()) {
            case "/normal-tables":
                responseView(req, resp, "Normal Tables", "/pages/tables/normal-tables.jsp", es, ec);
                break;
            case "/jquery-datatable":
                ec.add("plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css");
                es.add("plugins/jquery-datatable/jquery.dataTables.js");
                es.add("plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js");
                es.add("plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js");
                es.add("plugins/jquery-datatable/extensions/export/buttons.flash.min.js");
                es.add("plugins/jquery-datatable/extensions/export/jszip.min.js");
                es.add("plugins/jquery-datatable/extensions/export/pdfmake.min.js");
                es.add("plugins/jquery-datatable/extensions/export/vfs_fonts.js");
                es.add("plugins/jquery-datatable/extensions/export/buttons.html5.min.js");
                es.add("plugins/jquery-datatable/extensions/export/buttons.print.min.js");
                es.add("js/pages/tables/jquery-datatable.js");
                responseView(req, resp, "Jquery Data Table", "/pages/tables/jquery-datatable.jsp", es, ec);
                break;
            case "/editable-table":
                es.add("plugins/editable-table/mindmup-editabletable.js");
                es.add("js/pages/tables/editable-table.js");
                responseView(req, resp, "Editable Table", "/pages/tables/editable-table.jsp", es, ec);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
