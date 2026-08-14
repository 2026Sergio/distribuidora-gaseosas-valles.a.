-- ---------------------
-- funciones 

USE distribuidora_bebidas;


-- 1ra funcion
DELIMITER //

CREATE FUNCTION fn_calcular_total_con_iva(
    p_monto DECIMAL(10,2)
) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_total DECIMAL(10,2);
    -- Aplica el 12% de IVA
    SET v_total = p_monto * 1.12;
    RETURN v_total;
END //

DELIMITER ;

SELECT fn_calcular_total_con_iva(150.00) AS total_con_iva;


-- 2da funcion
DELIMITER //

CREATE FUNCTION fn_verificar_stock_disponible(
    p_id_producto VARCHAR(10),
    p_cantidad_solicitada INT
) 
RETURNS TINYINT(1)
READS SQL DATA
BEGIN
    DECLARE v_stock_actual INT DEFAULT 0;
    
    -- Obtener el stock actual del producto
    SELECT stock_actual INTO v_stock_actual
    FROM productos
    WHERE id_producto = p_id_producto;
    
    -- Evaluar si alcanza la existencia
    IF v_stock_actual >= p_cantidad_solicitada THEN
        RETURN 1; -- Hay stock suficiente
    ELSE
        RETURN 0; -- No hay stock suficiente
    END IF;
END //

DELIMITER ;

SELECT fn_verificar_stock_disponible('PROD01', 10) AS tiene_stock;
