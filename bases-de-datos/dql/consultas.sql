USE distribuidora_bebidas;

-- ============================================================================
-- 1. Consultar los productos con stock por debajo del mínimo.
-- ============================================================================
SELECT 
    s.nombre_sede,
    p.id_producto,
    p.nombre_producto,
    i.stock_actual,
    i.stock_minimo,
    (i.stock_minimo - i.stock_actual) AS unidades_faltantes
FROM inventario i
JOIN productos p ON i.id_producto = p.id_producto
JOIN sedes s ON i.id_sede = s.id_sede
WHERE i.stock_actual <= i.stock_minimo;

-- ============================================================================
-- 2. Consultar los pedidos realizados entre dos fechas (BETWEEN).
-- ============================================================================
SELECT 
    p.id_pedido,
    p.fecha_pedido,
    cli.nombre_cliente,
    s.nombre_sede
FROM pedidos p
JOIN clientes cli ON p.id_cliente = cli.id_cliente
JOIN sedes s ON p.id_sede = s.id_sede
WHERE p.fecha_pedido BETWEEN '2026-01-01 00:00:00' AND '2026-06-30 23:59:59'
ORDER BY p.fecha_pedido ASC;

-- ============================================================================
-- 3. Listar los productos más vendidos (con JOIN y GROUP BY).
-- ============================================================================
SELECT 
    p.id_producto,
    p.nombre_producto,
    c.nombre_categoria,
    SUM(dp.cantidad_pedida) AS total_unidades_vendidas
FROM productos p
JOIN categorias c ON p.id_categoria = c.id_categoria
JOIN detalle_pedido dp ON p.id_producto = dp.id_producto
GROUP BY p.id_producto, p.nombre_producto, c.nombre_categoria
ORDER BY total_unidades_vendidas DESC;

-- ============================================================================
-- 4. Mostrar clientes y la cantidad de pedidos realizados.
-- ============================================================================
SELECT 
    cli.id_cliente,
    cli.nombre_cliente,
    cli.nit_cliente,
    COUNT(p.id_pedido) AS cantidad_pedida_pedidos
FROM clientes cli
LEFT JOIN pedidos p ON cli.id_cliente = p.id_cliente
GROUP BY cli.id_cliente, cli.nombre_cliente, cli.nit_cliente
ORDER BY cantidad_pedida_pedidos DESC;

-- ============================================================================
-- 5. Buscar clientes por nombre parcial usando LIKE.
-- ============================================================================
SELECT 
    cli.id_cliente,
    cli.nombre_cliente,
    cli.nit_cliente,
    cli.direccion_cliente,
    cli.telefono_cliente,
    cli.correo_cliente
FROM clientes cli
WHERE cli.nombre_cliente LIKE '%Abarrotería%'
ORDER BY cli.nombre_cliente ASC;

-- ============================================================================
-- 6. Consultar productos de ciertas categorías usando IN.
-- ============================================================================
SELECT 
    p.id_producto,
    p.nombre_producto,
    c.nombre_categoria,
    p.volumen_ml
FROM productos p
JOIN categorias c ON p.id_categoria = c.id_categoria
WHERE c.id_categoria IN ('CAT-01', 'CAT-02', 'CAT-03')
ORDER BY c.nombre_categoria, p.nombre_producto;

-- ============================================================================
-- 7. Mostrar el cliente con mayor número de pedidos (subconsulta).
-- ============================================================================
SELECT 
    cli.id_cliente,
    cli.nombre_cliente,
    cli.nit_cliente,
    COUNT(p.id_pedido) AS total_pedidos
FROM clientes cli
JOIN pedidos p ON cli.id_cliente = p.id_cliente
GROUP BY cli.id_cliente, cli.nombre_cliente, cli.nit_cliente
HAVING COUNT(p.id_pedido) = (
    SELECT MAX(conteo_pedidos)
    FROM (
        SELECT COUNT(id_pedido) AS conteo_pedidos
        FROM pedidos
        GROUP BY id_cliente
    ) AS resumen_conteo
);

-- ============================================================================
-- 8. Consultar pedidos y sus totales agrupados por sede.
-- ============================================================================
SELECT 
    s.id_sede,
    s.nombre_sede,
    COUNT(DISTINCT p.id_pedido) AS total_pedidos_gestionados,
    SUM(dp.cantidad_pedida * dp.precio_unitario) AS monto_total_ventas_sin_iva,
    ROUND(SUM(dp.cantidad_pedida * dp.precio_unitario) * 1.10, 2) AS monto_total_ventas_con_iva
FROM sedes s
JOIN pedidos p ON s.id_sede = p.id_sede
JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
GROUP BY s.id_sede, s.nombre_sede
ORDER BY monto_total_ventas_con_iva DESC;
