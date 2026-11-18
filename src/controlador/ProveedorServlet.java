package controlador;

import dao.ProveedorDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import modelo.Proveedor;

@WebServlet("/ProveedorServlet")
public class ProveedorServlet extends HttpServlet {

    private final ProveedorDAO dao = new ProveedorDAO();

    // Método GET: Consulta la lista en MySQL y la envía a la página JSP
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Proveedor> lista = dao.listar();
        request.setAttribute("listaProveedores", lista);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    // Método POST: Recibe los parámetros del formulario HTML y guarda en MySQL
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String nit = request.getParameter("nit");
        String razonSocial = request.getParameter("razonSocial");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        boolean estado = request.getParameter("estado") != null;

        Proveedor nuevo = new Proveedor(nit, razonSocial, telefono, correo, estado);
        dao.crear(nuevo);

        // Redirige al doGet para recargar la tabla actualizada
        response.sendRedirect("ProveedorServlet");
    }
}