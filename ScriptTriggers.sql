USE proyecto_fotocopiadora_finkgarcia;
-- *** Creo las tablas donde van a guardarse los datos de las operaciones de los triggers ***

CREATE TABLE control_insertar_producto ( 
idUsuario bigint NOT NULL, 
fecha date,
idProducto bigint
);

CREATE TABLE control_insertar_productovendido ( 
idUsuario bigint NOT NULL, 
fecha date,
idProducto bigint
);

CREATE TABLE control_eliminar_producto ( 
idUsuario bigint NOT NULL, 
fecha date,
idProducto bigint
);

CREATE TRIGGER `tr_insertar_producto`
AFTER INSERT ON  `producto`
FOR EACH ROW 
INSERT INTO `control_insertar_producto`
(idUsuario, fecha, id_producto, nombreUsuario) VALUES (NEW.idUsuario, NOW(), NEW.id, SESSION_USER());

-- *** Pruebo el funcionamiento ***

INSERT INTO producto (descripcion, precio_lista, precio_venta, id_usuario, stock)
VALUES ('Minas HB', 50, 150, 3, 200);

CREATE TRIGGER `tr_insertar_producto_vendido`
AFTER INSERT ON  `productovendido`
FOR EACH ROW 
INSERT INTO `control_insertar_productovendido`
(idUsuario, fecha, idProducto, nombreUsuario) VALUES (NEW.idUsuario, NOW(), NEW.idProducto, SESSION_USER());

-- *** Pruebo el funcionamiento ***

INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida)
VALUES ('Minas HB', 5086886, 1, 3, 2);

select * from control_insertar_productovendido;


CREATE TRIGGER `tr_eliminar_producto`
AFTER DELETE ON  `producto`
FOR EACH ROW 
INSERT INTO `control_eliminar_producto`
(idUsuario, fecha, idProducto) VALUES (OLD.id_usuario, NOW(), OLD.id);

