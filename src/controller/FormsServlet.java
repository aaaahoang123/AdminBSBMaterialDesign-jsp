package controller;

import utility.Viewer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FormsServlet extends Viewer {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> es = new ArrayList<>();
        List<String> ec = new ArrayList<>();

        switch (req.getPathInfo()) {
            case "/basic-form-elements":
                ec.add("plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css");
                ec.add("plugins/waitme/waitMe.css");
                ec.add("plugins/bootstrap-select/css/bootstrap-select.css");
                es.add("plugins/autosize/autosize.js");
                es.add("plugins/momentjs/moment.js");
                es.add("plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js");
                es.add("js/pages/forms/basic-form-elements.js");
                responseView(req, resp, "Basic Form Elements", "/pages/forms/basic-form-elements.jsp", es, ec);
                break;
            case "/advanced-form-elements":
                ec.add("plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css");
                ec.add("plugins/dropzone/dropzone.css");
                ec.add("plugins/multi-select/css/multi-select.css");
                ec.add("plugins/jquery-spinner/css/bootstrap-spinner.css");
                ec.add("plugins/bootstrap-tagsinput/bootstrap-tagsinput.css");
                ec.add("plugins/bootstrap-select/css/bootstrap-select.css");
                ec.add("plugins/nouislider/nouislider.min.css");
                es.add("plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js");
                es.add("plugins/dropzone/dropzone.js");
                es.add("plugins/jquery-inputmask/jquery.inputmask.bundle.js");
                es.add("plugins/multi-select/js/jquery.multi-select.js");
                es.add("plugins/jquery-spinner/js/jquery.spinner.js");
                es.add("plugins/bootstrap-tagsinput/bootstrap-tagsinput.js");
                es.add("plugins/nouislider/nouislider.js");
                es.add("js/pages/forms/advanced-form-elements.js");
                responseView(req, resp, "Basic Form Elements", "/pages/forms/advanced-form-elements.jsp", es, ec);
                break;
            case "/form-examples":
                ec.add("plugins/sweetalert/sweetalert.css");
                responseView(req, resp, "Basic Form Elements", "/pages/forms/form-examples.jsp", es, ec);
                break;
            case "/form-validation":
                ec.add("plugins/sweetalert/sweetalert.css");
                es.add("plugins/jquery-validation/jquery.validate.js");
                es.add("plugins/jquery-steps/jquery.steps.js");
                es.add("plugins/sweetalert/sweetalert.min.js");
                es.add("js/pages/forms/form-validation.js");
                responseView(req, resp, "Basic Form Elements", "/pages/forms/form-validation.jsp", es, ec);
                break;
            case "/form-wizard":
                ec.add("plugins/sweetalert/sweetalert.css");
                es.add("plugins/jquery-validation/jquery.validate.js");
                es.add("plugins/jquery-steps/jquery.steps.js");
                es.add("plugins/sweetalert/sweetalert.min.js");
                es.add("js/pages/forms/form-wizard.js");
                responseView(req, resp, "Basic Form Elements", "/pages/forms/form-wizard.jsp", es, ec);
                break;
            case "/editors":
                es.add("plugins/ckeditor/ckeditor.js");
                es.add("plugins/tinymce/tinymce.min.js");
                es.add("js/pages/forms/editors.js");
                responseView(req, resp, "Basic Form Elements", "/pages/forms/editors.jsp", es, ec);
                break;
            default:
                req.setAttribute("code", 404);
                req.getRequestDispatcher("/pages/examples/errors/layout.jsp").forward(req, resp);
                break;
        }
    }
}
