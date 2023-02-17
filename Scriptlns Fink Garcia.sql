
INSERT INTO usuario (nombre, apellido, nombreUsuario,contrasena)
VALUES ('Noelia', 'Fink Garcia', 'nfinkgarcia', 'noelia1234'); 
INSERT INTO usuario (nombre, apellido, nombreUsuario,contrasena)
VALUES ('Ileana', 'Fink', 'ileanafink', 'soyileanafink'); 
INSERT INTO usuario (nombre, apellido, nombreUsuario,contrasena)
VALUES ('Javier', 'Oesquer', 'joesquer', 'javieroesquer');


INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario, stock)
VALUES ('Boligrafo Bic', 30, 70, 1, 100);
INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario, stock)
VALUES ('Regla 20 cm', 40, 65, 2, 50);
INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario, stock)
VALUES ('Fotocopia simple faz', 5, 15, 2, 1000);
INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario, stock)
VALUES ('Fotocopia doble faz', 8, 20, 2, 1000);
INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario,stock)
VALUES ('Carpeta A4', 300, 500, 3, 100);
INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario, stock)
VALUES ('Anillado', 60, 100, 3, 1000);
INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario, stock)
VALUES ('Toner', 800, 1500, 3, 4);
INSERT INTO producto (descripcion, precio_lista, precio_venta, id_Usuario, stock)
VALUES ('Anillos x 50 unid', 15, 35, 3, 500);


insert into gastos (id_factura_compra, total_compra, cantidad_comprada, id_producto)
values (1234, 4000, 4, 10);
insert into gastos (id_factura_compra, total_compra, cantidad_comprada, id_producto)
values (5678, 1400, 50, 5);
insert into gastos ( id_factura_compra, total_compra, cantidad_comprada, id_producto)
values (897556, 1000, 25, 1);
insert into gastos (id_factura_compra, total_compra, cantidad_comprada, id_producto)
values ( 89755,1200, 100, 7);


insert into productoVendido (detalle, idFactura, idUsuario, idProducto,cantidad_vendida)
values ('2 boligrafos', 1234, 1, 1, 10),
('1 regla', 345, 1, 2, 8),
('3 fotocopias simple faz', 678, 3, 3, 25),
('1 carpeta A4', 456, 2, 8, 4 ); 


insert into proveedores (id_proveedor, nombre_proveedor, contactoProveedor)
values (1, 'MAPA' , 3636465757),
(2, 'fotocopiadoras pepito', 85756475868),
(3, 'Grafito libreria', 76767484994);
