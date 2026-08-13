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