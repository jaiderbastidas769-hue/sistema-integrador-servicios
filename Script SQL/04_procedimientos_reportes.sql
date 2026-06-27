USE smart_stock_db;

-- Procedimiento para registrar una venta completa (transacción segura)
DELIMITER //

CREATE PROCEDURE registrar_venta(
    IN p_usuario_id INT,
    IN p_producto_id INT,
    IN p_cantidad INT,
    IN p_precio_unitario DECIMAL(12,2)
)
BEGIN
    DECLARE v_venta_id INT;
    
    START TRANSACTION;
    
    -- Insertar la cabecera de la venta
    INSERT INTO ventas (usuario_id, total_venta) 
    VALUES (p_usuario_id, (p_cantidad * p_precio_unitario));
    
    SET v_venta_id = LAST_INSERT_ID();
    
    -- Insertar detalle
    INSERT INTO detalle_ventas (venta_id, producto_id, cantidad, precio_subtotal)
    VALUES (v_venta_id, p_producto_id, p_cantidad, (p_cantidad * p_precio_unitario));
    
    COMMIT;
END //

-- Vista para reporte de inventario bajo
CREATE VIEW vista_inventario_critico AS
SELECT nombre, stock_actual 
FROM productos 
WHERE stock_actual < 5;

DELIMITER ;
