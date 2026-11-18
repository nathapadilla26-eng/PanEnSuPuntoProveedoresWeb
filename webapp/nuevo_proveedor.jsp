<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Añadir proveedor - Pan en su punto</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="css/estilos.css">
    </head>

    <body>
        <aside class="sidebar">
            <div class="brand">
                <img src="img/logo.jpg" alt="Logo Pan en su punto" class="brand-logo">
            </div>
            <a href="ProveedorServlet" class="nav-item"><i class="bi bi-house-door-fill"></i> Inicio</a>
            <a href="ProveedorServlet" class="nav-item"><i class="bi bi-people-fill"></i> Usuarios</a>
            <a href="ProveedorServlet" class="nav-item active"><i class="bi bi-box-seam-fill"></i> Inventario</a>
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
                <div class="form-header">
                    <h1 class="page-title">Añadir proveedor</h1>
                    <p class="page-subtitle">Registra los datos de una nueva empresa o distribuidor.</p>
                </div>

                <div class="card">
                    <form action="ProveedorServlet" method="POST">
                        <div class="form-grid">
                            <div class="form-group">
                                <label for="nit">NIT / Documento *</label>
                                <input type="text" id="nit" name="nit" placeholder="Ej: 900.123.456-7" required>
                            </div>

                            <div class="form-group">
                                <label for="razonSocial">Empresa *</label>
                                <input type="text" id="razonSocial" name="razonSocial"
                                    placeholder="Ej: Insumos Panaderos SAS" required>
                            </div>

                            <div class="form-group">
                                <label for="telefono">Teléfono *</label>
                                <input type="text" id="telefono" name="telefono" placeholder="Ej: 310 123 4567"
                                    required>
                            </div>

                            <div class="form-group">
                                <label for="correo">Correo electrónico *</label>
                                <input type="email" id="correo" name="correo" placeholder="Ej: ventas@insumos.com"
                                    required>
                            </div>
                        </div>

                        <div class="checkbox-group">
                            <input type="checkbox" id="estado" name="estado" checked>
                            <label for="estado">Proveedor activo</label>
                        </div>

                        <div class="form-actions">
                            <a href="ProveedorServlet" class="btn-cancel">Cancelar</a>
                            <button type="submit" class="btn-primary">Guardar proveedor</button>
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </body>

    </html>