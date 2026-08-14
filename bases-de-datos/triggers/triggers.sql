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

-- 2do trigger
-- ---------------------------------------------------------------------------
-- TRIGGER: tr_auditar_cambio_precio
--  Al actualizar el campo precio en la tabla productos, registra la fecha, el precio anterior y el nuevo en una tabla auditoria_precios.
-- ---------------------------------------------------------------------------
DROP TRIGGER IF EXISTS tr_auditar_cambio_precio;

DELIMITER //

CREATE TRIGGER tr_auditar_cambio_precio
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    -- Solo guarda auditoría si el precio realmente cambió
    IF OLD.precio <> NEW.precio THEN
        INSERT INTO auditoria_precios (
            id_producto,
            precio_anterior,
            precio_nuevo,
            fecha_cambio
        )
        VALUES (
            NEW.id_producto,
            OLD.precio,
            NEW.precio,
            NOW()
        );
    END IF;
END //

DELIMITER ;


-- ---------------------------------------------------------------------------
-- ver precio actual
-- ---------------------------------------------------------------------------
SELECT id_producto, nombre_producto, precio 
FROM productos 
WHERE id_producto = 'PROD-007';

-- ---------------------------------------------------------------------------
-- actualizar precio de un producto
-- ---------------------------------------------------------------------------
UPDATE productos 
SET precio = 15.50 
WHERE id_producto = 'PROD-007';

-- ---------------------------------------------------------------------------
-- ver auditoria de precios
-- ---------------------------------------------------------------------------
SELECT * FROM auditoria_precios;