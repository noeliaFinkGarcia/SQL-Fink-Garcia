use proyecto_fotocopiadora_finkgarcia;

-- ********************* Recibe el id de proveedor y devuelve el contacto **************************
DROP PROCEDURE IF EXISTS SP_PROVEEDOR;
DELIMITER //
CREATE PROCEDURE SP_GETPROVEEDOR(IN Id int)
BEGIN
declare contacto_proveedor int;
SELECT contactoProveedor AS Contacto FROM proveedores
WHERE id_proveedor = Id;
END
//
DELIMITER ;

CALL SP_GETPROVEEDOR(2);

-- ************************ Recibe un id de usuario y devuelve los productos vendidos por éste,
-- en orden alfabético ************************************************************************

DROP PROCEDURE IF EXISTS SP_PRODUCTOS;
DELIMITER //
CREATE PROCEDURE SP_PRODUCTOS(IN IdUsuario int)
BEGIN
SET @orden ='Id';
SELECT descripcion AS Descripción_Producto FROM producto 
WHERE id_usuario = IdUsuario
ORDER BY descripcion ASC;
END
//
DELIMITER ;

DROP PROCEDURE IF EXISTS SP_ELIMINAR_USUARIO;
DELIMITER //
CREATE PROCEDURE SP_ELIMINAR_USUARIO(IN IdUsuario int)
BEGIN
DELETE FROM usuario 
WHERE id = IdUsuario;
END
//
DELIMITER ;

