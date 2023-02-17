use proyecto_fotocopiadora_finkgarcia;

CREATE VIEW v_Usuarios AS 
SELECT  nombre AS Nombre, apellido AS Apellido, id AS Id
FROM usuario ;

CREATE VIEW v_producto AS 
SELECT  descripcion AS Producto, precio_venta AS Precio
FROM producto;

CREATE VIEW v_gastos AS
SELECT descripcion AS Descripción , cantidad_comprada from producto, gastos  
WHERE producto.id = gastos.id_producto;

CREATE VIEW v_producto_vendido AS
SELECT detalle AS Detalle, idFactura AS Factura FROM productovendido;
 
 
CREATE VIEW ventas_usuario AS
SELECT detalle AS Detalle, idFactura AS Factura, idUsuario AS Usuario, nombre AS NombreUsuario, apellido AS ApellidoUsuario  
FROM productovendido, usuario
WHERE usuario.id = productovendido.idUsuario;
 
CREATE VIEW datos_proveedores AS
SELECT nombre_proveedor AS Proveedor, contactoProveedor AS Contacto 
FROM proveedores;


