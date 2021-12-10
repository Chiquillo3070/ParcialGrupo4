package org.apache.jsp.Template;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Menu;
import java.util.List;
import conexion.Conexion;
import dao.MenuDao;

public final class _005fHeader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Conexion conn = new Conexion();
    MenuDao menud = new MenuDao(conn);
    RequestDispatcher rd;
    List<Menu> almacen;
    List<Menu> pieza;
    List<Menu> tpieza;
    List<Menu> movi;
    List<Menu> usuarios;
    List<Menu> roles;
    List<Menu> permisos;

    HttpSession sesion = request.getSession();
    String usuario;
   
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("http://localhost:8080/Almacenes/index.jsp");
        return;
    } else {
        usuario = sesion.getAttribute("usuario").toString();
    }
    
    almacen = menud.getMenu(Integer.parseInt(sesion.getAttribute("id_usuario").toString()), 2);
    pieza = menud.getMenu(Integer.parseInt(sesion.getAttribute("id_usuario").toString()), 3);
    tpieza = menud.getMenu(Integer.parseInt(sesion.getAttribute("id_usuario").toString()), 4);
    movi = menud.getMenu(Integer.parseInt(sesion.getAttribute("id_usuario").toString()), 5);
    usuarios = menud.getMenu(Integer.parseInt(sesion.getAttribute("id_usuario").toString()), 6); 
    roles = menud.getMenu(Integer.parseInt(sesion.getAttribute("id_usuario").toString()), 7); 
    permisos = menud.getMenu(Integer.parseInt(sesion.getAttribute("id_usuario").toString()), 8); 

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Material Dash</title>\n");
      out.write("        <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap'>\n");
      out.write("        \n");
      out.write("        <!-- plugins:css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/assets/vendors/mdi/css/materialdesignicons.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/assets/vendors/css/vendor.bundle.base.css\">\n");
      out.write("        <!-- endinject -->\n");
      out.write("        <!-- Plugin css for this page -->\n");
      out.write("        <!-- End plugin css for this page -->\n");
      out.write("        <!-- Layout styles -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/assets/css/demo/style.css\">\n");
      out.write("        <!-- End layout styles -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/assets/images/favicon.png\" />\n");
      out.write("        \n");
      out.write("        <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/assets/carrusel/luxa.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/assets/carrusel/carrusel.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        history.forward();\n");
      out.write("    </script>\n");
      out.write("    <script src=\"assets/js/preloader.js\"></script>\n");
      out.write("    <div class=\"body-wrapper\">\n");
      out.write("        <!-- Sidernavbar partial:../../partials/_sidebar.html -->\n");
      out.write("        <aside class=\"mdc-drawer mdc-drawer--dismissible mdc-drawer--open\">\n");
      out.write("            <div class=\"mdc-drawer__header\">\n");
      out.write("                <a href=\"index.html\" class=\"brand-logo\">\n");
      out.write("                    <img src=\"assets/images/name.png\" alt=\"logo\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"mdc-drawer__content\">\n");
      out.write("                <div class=\"user-info\">\n");
      out.write("                    <p class=\"name\">");
      out.print(sesion.getAttribute("nombres").toString());
      out.write(' ');
      out.print(sesion.getAttribute("apellidos").toString());
      out.write("</p>\n");
      out.write("                    <p class=\"email\">");
      out.print(sesion.getAttribute("usuario").toString());
      out.write("</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"mdc-list-group\">\n");
      out.write("                    <nav class=\"mdc-list mdc-drawer-menu\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/principal?action=redireccionar\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\"\n");
      out.write("                                    aria-hidden=\"true\">home</i>\n");
      out.write("                                Dashboard\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 for (Menu a : pieza) {
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.print(a.getUrl());
      out.write("\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\"\n");
      out.write("                                    aria-hidden=\"true\">track_changes</i>\n");
      out.write("                                ");
      out.print(a.getNombre_modulo());
      out.write("\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
 for (Menu a : almacen) {
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.print(a.getUrl());
      out.write("\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\"\n");
      out.write("                                    aria-hidden=\"true\">grid_on</i>\n");
      out.write("                                ");
      out.print(a.getNombre_modulo());
      out.write("\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
 for (Menu a : tpieza) {
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.print(a.getUrl());
      out.write("\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\"\n");
      out.write("                                    aria-hidden=\"true\">build</i>\n");
      out.write("                                Tipos de piezas...\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
 for (Menu a : movi) {
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.print(a.getUrl());
      out.write("\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\" aria-hidden=\"true\">folder_special</i>\n");
      out.write("                                ");
      out.print(a.getNombre_modulo());
      out.write("\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
 for (Menu a : usuarios) {
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.print(a.getUrl());
      out.write("\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\" aria-hidden=\"true\">account_circle</i>\n");
      out.write("                                ");
      out.print(a.getNombre_modulo());
      out.write("\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
 for (Menu a : roles) {
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.print(a.getUrl());
      out.write("\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\" aria-hidden=\"true\">security</i>\n");
      out.write("                                ");
      out.print(a.getNombre_modulo());
      out.write("\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
 for (Menu a : permisos) {
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-drawer-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.print(a.getUrl());
      out.write("\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\" aria-hidden=\"true\">security</i>\n");
      out.write("                                ");
      out.print(a.getNombre_modulo());
      out.write("\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
      out.write("\n");
      out.write("                        <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                            <a class=\"mdc-expansion-panel-link\" href=\"#\" data-toggle=\"expansionPanel\"\n");
      out.write("                                data-target=\"ui-sub-menu\">\n");
      out.write("                                <i class=\"material-icons mdc-list-item__start-detail mdc-drawer-item-icon\"\n");
      out.write("                                    aria-hidden=\"true\">dashboard</i>\n");
      out.write("                                UI Features\n");
      out.write("                                <i class=\"mdc-drawer-arrow material-icons\">chevron_right</i>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"mdc-expansion-panel\" id=\"ui-sub-menu\">\n");
      out.write("                                <nav class=\"mdc-list mdc-drawer-submenu\">\n");
      out.write("                                    <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                                        <a class=\"mdc-drawer-link\" href=\"../../pages/ui-features/buttons.html\">\n");
      out.write("                                            Buttons\n");
      out.write("                                        </a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"mdc-list-item mdc-drawer-item\">\n");
      out.write("                                        <a class=\"mdc-drawer-link\" href=\"../../pages/ui-features/typography.html\">\n");
      out.write("                                            Typography\n");
      out.write("                                        </a>\n");
      out.write("                                    </div>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");
      out.write("\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"profile-actions\">\n");
      out.write("                    <a href=\"javascript:;\">Configuración</a>\n");
      out.write("                    <span class=\"divider\"></span>\n");
      out.write("                    <a href=\"login?action=logout\">Cerrar sesión</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </aside>\n");
      out.write("        <!-- Header nav partial -->\n");
      out.write("        <div class=\"main-wrapper mdc-drawer-app-content\">\n");
      out.write("            <!-- partial:../../partials/_navbar.html -->\n");
      out.write("            <header class=\"mdc-top-app-bar\">\n");
      out.write("                <div class=\"mdc-top-app-bar__row\">\n");
      out.write("                    <div class=\"mdc-top-app-bar__section mdc-top-app-bar__section--align-start\">\n");
      out.write("                        <button\n");
      out.write("                            class=\"material-icons mdc-top-app-bar__navigation-icon mdc-icon-button sidebar-toggler\">menu</button>\n");
      out.write("                        <span class=\"mdc-top-app-bar__title\">Grupo 4 Programación IV!</span>\n");
      out.write("                        <div\n");
      out.write("                            class=\"mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon search-text-field d-none d-md-flex\">\n");
      out.write("                            <i class=\"material-icons mdc-text-field__icon\">search</i>\n");
      out.write("                            <input class=\"mdc-text-field__input\" id=\"text-field-hero-input\">\n");
      out.write("                            <div class=\"mdc-notched-outline\">\n");
      out.write("                                <div class=\"mdc-notched-outline__leading\"></div>\n");
      out.write("                                <div class=\"mdc-notched-outline__notch\">\n");
      out.write("                                    <label for=\"text-field-hero-input\" class=\"mdc-floating-label\">Search..</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"mdc-notched-outline__trailing\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div\n");
      out.write("                        class=\"mdc-top-app-bar__section mdc-top-app-bar__section--align-end mdc-top-app-bar__section-right\">\n");
      out.write("                        <!-- Dropdown -->\n");
      out.write("                        <div class=\"menu-button-container menu-profile d-none d-md-block\">\n");
      out.write("                            <button class=\"mdc-button mdc-menu-button\">\n");
      out.write("                                <span class=\"d-flex align-items-center\">\n");
      out.write("                                    <span class=\"figure\">\n");
      out.write("                                        <img src=\"assets/images/faces/face1.jpg\" alt=\"user\" class=\"user\">\n");
      out.write("                                    </span>\n");
      out.write("                                    <span class=\"user-name\">");
      out.print(sesion.getAttribute("nombres").toString());
      out.write(' ');
      out.print(sesion.getAttribute("apellidos").toString());
      out.write("</span>\n");
      out.write("                                </span>\n");
      out.write("                            </button>\n");
      out.write("                            <div class=\"mdc-menu mdc-menu-surface\" tabindex=\"-1\">\n");
      out.write("                                <ul class=\"mdc-list\" role=\"menu\" aria-hidden=\"true\" aria-orientation=\"vertical\">\n");
      out.write("                                    <li class=\"mdc-list-item\" role=\"menuitem\">\n");
      out.write("                                        <div class=\"item-thumbnail item-thumbnail-icon-only\">\n");
      out.write("                                            <i class=\"mdi mdi-account-edit-outline text-primary\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div\n");
      out.write("                                            class=\"item-content d-flex align-items-start flex-column justify-content-center\">\n");
      out.write("                                            <h6 class=\"item-subject font-weight-normal\">Editar perfil</h6>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"mdc-list-item\" role=\"menuitem\">\n");
      out.write("                                        <div class=\"item-thumbnail item-thumbnail-icon-only\">\n");
      out.write("                                            <i class=\"mdi small material-icons text-primary\">arrow_forward</i>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"item-content d-flex align-items-start flex-column justify-content-center\">\n");
      out.write("                                            <a href=\"login?action=logout\">\n");
      out.write("                                                <h6 class=\"item-subject font-weight-normal\">Cerrar sesión</h6>\n");
      out.write("                                            </a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Fin dropdown usuario -->\n");
      out.write("                        <div class=\"divider d-none d-md-block\"></div>\n");
      out.write("                        <div class=\"menu-button-container d-none d-md-block\">\n");
      out.write("                            <button class=\"mdc-button mdc-menu-button\">\n");
      out.write("                                <i class=\"mdi mdi-settings\"></i>\n");
      out.write("                            </button>\n");
      out.write("                            <div class=\"mdc-menu mdc-menu-surface\" tabindex=\"-1\">\n");
      out.write("                                <ul class=\"mdc-list\" role=\"menu\" aria-hidden=\"true\" aria-orientation=\"vertical\">\n");
      out.write("                                    <li class=\"mdc-list-item\" role=\"menuitem\">\n");
      out.write("                                        <div class=\"item-thumbnail item-thumbnail-icon-only\">\n");
      out.write("                                            <i class=\"mdi mdi-alert-circle-outline text-primary\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div\n");
      out.write("                                            class=\"item-content d-flex align-items-start flex-column justify-content-center\">\n");
      out.write("                                            <h6 class=\"item-subject font-weight-normal\">Settings</h6>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"mdc-list-item\" role=\"menuitem\">\n");
      out.write("                                        <div class=\"item-thumbnail item-thumbnail-icon-only\">\n");
      out.write("                                            <i class=\"mdi mdi-progress-download text-primary\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div\n");
      out.write("                                            class=\"item-content d-flex align-items-start flex-column justify-content-center\">\n");
      out.write("                                            <h6 class=\"item-subject font-weight-normal\">Update</h6>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("            <!-- partial -->\n");
      out.write("            <div class=\"page-wrapper mdc-toolbar-fixed-adjust\">\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
