-- -------------------------------------------------------------------------------
-- TRIGGER: tr_actualizar_stock
-- Este trigger se activa después de insertar un nuevo registro en la tabla detalle_pedido.
-- --------------------------------------------------------------------------------

DROP TRIGGER IF EXISTS tr_actualizar_stock;

DELIMITER //

CREATE TRIGGER tr_actualizar_stock
AFTER INSERT ON detalle_pedido
FOR EACH ROW
BEGIN
    DECLARE v_id_sede VARCHAR(10);
    SELECT id_sede INTO v_id_sede
    FROM pedidos
    WHERE id_pedido = NEW.id_pedido;
    UPDATE inventario
    SET stock_actual = stock_actual - NEW.cantidad_pedida
    WHERE id_producto = NEW.id_producto
      AND id_sede = v_id_sede;
END //

DELIMITER ;

-- ----------------------------------------------------------------------------
-- agregar un nuevo producto al inventario
-- ----------------------------------------------------------------------------
SELECT id_producto, id_sede, stock_actual
FROM inventario
WHERE id_producto = 'PROD-007' AND id_sede = 'SED-01';

-- ---------------------------------------------------------------------------
-- seleccionar todos los registros de la tabla inventario
-- ---------------------------------------------------------------------------
SELECT * FROM inventario;