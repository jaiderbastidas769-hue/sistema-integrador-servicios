USE smart_stock_db;

-- Tabla para auditoría de cambios
CREATE TABLE IF NOT EXISTS logs_auditoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tabla_afectada VARCHAR(50),
    accion VARCHAR(20), -- 'INSERT', 'UPDATE', 'DELETE'
    usuario_db VARCHAR(50),
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger para registrar cambios en productos
DELIMITER //
CREATE TRIGGER trg_audit_productos
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    INSERT INTO logs_auditoria (tabla_afectada, accion, usuario_db)
    VALUES ('productos', 'UPDATE', USER());
END //
DELIMITER ;
