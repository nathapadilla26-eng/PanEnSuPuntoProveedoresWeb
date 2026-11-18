<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.List" %>
        <%@ page import="modelo.Proveedor" %>
            <!DOCTYPE html>
            <html lang="es">

            <head>
                <meta charset="UTF-8">
                <title>Gestión de proveedores - Pan en su punto</title>
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
                <link rel="stylesheet" href="css/estilos.css">
            </head>

            <body>
                <aside class="sidebar">
                    <div class="brand">
                        <img src="img/logo.jpg" alt="Logo Pan en su punto" class="brand-logo">
                    </div>
                    <a href="ProveedorServlet" class="nav-item"><i class="bi bi-house-door-fill"></i> Inicio</a>
                    <a href="ProveedorServlet" class="nav-item"><i class="bi bi-people-fill"></i> Usuarios</a>
                    <a href="ProveedorServlet" class="nav-item active"><i class="bi bi-box-seam-fill"></i>
                        Inventario</a>
                    <a href="ProveedorServlet" class="nav-item"><i class="bi bi-journal-bookmark-fill"></i> Recetas</a>
                    <a href="ProveedorServlet" class="nav-item"><i class="bi bi-fire"></i> Producción</a>
                    <a href="ProveedorServlet" class="nav-item"><i class="bi bi-shop"></i> Ventas</a>
                    <a href="ProveedorServlet" class="nav-item"><i class="bi bi-graph-up-arrow"></i> Reportes</a>
                    <a href="ProveedorServlet" class="nav-item"><i class="bi bi-gear-fill"></i> Configuración</a>
                </aside>

                <div class="main">
                    <header class="topbar">
                        <div class="search-box">
                            <i class="bi bi-search"></i>
                            <input type="text" class="top-search" placeholder="Buscar...">
                        </div>
                        <div class="topbar-actions">
                            <i class="bi bi-bell bell-icon"></i>
                            <div class="avatar">N</div>
                        </div>
                    </header>

                    <section class="content">
                        <div class="page-header">
                            <div>
                                <h1 class="page-title">Gestión de proveedores</h1>
                                <p class="page-subtitle">Administra la información de contacto de los proveedores.</p>
                            </div>
                            <a href="nuevo_proveedor.jsp" class="btn-primary">+ Nuevo proveedor</a>
                        </div>

                        <div class="card">
                            <div class="filter-bar">
                                <select id="filtroEstado" class="filter-select">
                                    <option value="todos">Estado: Todos</option>
                                    <option value="activo">Activo</option>
                                    <option value="inactivo">Inactivo</option>
                                </select>
                                <input type="text" id="buscador" class="filter-input" placeholder="Buscar proveedor...">
                            </div>

                            <table id="tablaProveedores">
                                <thead>
                                    <tr>
                                        <th>NIT / Documento</th>
                                        <th>Empresa</th>
                                        <th>Teléfono</th>
                                        <th>Correo electrónico</th>
                                        <th>Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% List<Proveedor> lista = (List<Proveedor>)
                                            request.getAttribute("listaProveedores");
                                            int total = 0;
                                            if (lista != null && !lista.isEmpty()) {
                                            total = lista.size();
                                            for (Proveedor p : lista) {
                                            String textoEstado = p.isEstado() ? "Activo" : "Inactivo";
                                            %>
                                            <tr>
                                                <td>
                                                    <%= p.getNit() %>
                                                </td>
                                                <td>
                                                    <%= p.getRazonSocial() %>
                                                </td>
                                                <td>
                                                    <%= p.getTelefono() %>
                                                </td>
                                                <td>
                                                    <%= p.getCorreo() %>
                                                </td>
                                                <td>
                                                    <%= textoEstado %>
                                                </td>
                                            </tr>
                                            <% } } else { %>
                                                <tr>
                                                    <td colspan="5" class="empty-message">
                                                        No hay proveedores registrados. Haz clic en "+ Nuevo proveedor"
                                                        para agregar uno.
                                                    </td>
                                                </tr>
                                                <% } %>
                                </tbody>
                            </table>

                            <div class="table-footer">
                                Mostrando <%= total %> resultado(s)
                            </div>
                        </div>
                    </section>
                </div>

                <script src="js/proveedores.js"></script>
            </body>

            </html>