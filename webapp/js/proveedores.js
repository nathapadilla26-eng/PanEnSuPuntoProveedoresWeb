document.addEventListener("DOMContentLoaded", () => {
    const buscador = document.getElementById("buscador");
    const filtroEstado = document.getElementById("filtroEstado");
    const filas = document.querySelectorAll("#tablaProveedores tbody tr");

    function filtrarTabla() {
        const texto = buscador.value.toLowerCase();
        const estado = filtroEstado.value;

        filas.forEach(fila => {
            if (fila.cells.length < 5) {
                return;
            }
            const contenido = fila.innerText.toLowerCase();
            const estadoFila = fila.cells[4].innerText.trim().toLowerCase();
            const coincideTexto = contenido.includes(texto);
            const coincideEstado = (estado === "todos") || (estadoFila === estado);
            fila.style.display = (coincideTexto && coincideEstado) ? "" : "none";
        });
    }

    if (buscador && filtroEstado) {
        buscador.addEventListener("keyup", filtrarTabla);
        filtroEstado.addEventListener("change", filtrarTabla);
    }
});