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