USE smart_stock_db;

-- Crear índices para búsquedas frecuentes
-- Esto hará que buscar un producto por SKU o nombre sea instantáneo
CREATE INDEX idx_producto_sku ON productos(codigo_sku);
CREATE INDEX idx_venta_fecha ON ventas(fecha_venta);
