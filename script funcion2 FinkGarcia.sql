CREATE DEFINER=`root`@`localhost` FUNCTION `mostrar_idFactura`(idProduc bigint) RETURNS bigint
    DETERMINISTIC
BEGIN
DECLARE Id_factura bigint;
SET Id_factura = (SELECT idFactura FROM productoVedido WHERE idProducto = idProduct);
RETURN Id_factura;
END