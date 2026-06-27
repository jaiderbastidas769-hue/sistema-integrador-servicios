USE smart_stock_db;

DELIMITER //

-- Trigger: Actualizar inventario al registrar una venta
CREATE TRIGGER after_detalle_venta_insert
AFTER INSERT ON detalle_ventas
FOR EACH ROW
BEGIN
    UPDATE productos
    SET stock_actual = stock_actual - NEW.cantidad
    WHERE id = NEW.producto_id;
END //

DELIMITER ;
