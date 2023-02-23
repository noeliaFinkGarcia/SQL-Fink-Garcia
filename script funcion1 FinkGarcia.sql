CREATE DEFINER=`root`@`localhost` FUNCTION `´obtenerNombreProducto´`( idProducto integer) RETURNS varchar(60) CHARSET utf8mb4
    DETERMINISTIC
BEGIN 
DECLARE nombre varchar(60);
SET nombre= (SELECT descripcion FROM producto WHERE id = idProducto);
RETURN nombre ;
END