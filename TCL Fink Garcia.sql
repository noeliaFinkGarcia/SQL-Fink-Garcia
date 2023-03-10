use proyecto_fotocopiadora_finkgarcia;
START TRANSACTION;
DELETE FROM producto 
WHERE id = 9;

DELETE FROM producto 
WHERE id = 7;

DELETE FROM producto 
WHERE id = 10;

-- rollback;
commit;

START TRANSACTION;
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES ('Boligrafo bic', 957698, 1, 1, 3);
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES   ('Regla ', 456887, 2, 2, 2);
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES ('Anillado', 13675, 3, 9, 1);
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES ('Minas HB', 9753, 2, 25, 1); 
savepoint punto_1;
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES ('Carpeta A4', 9076698, 1, 1, 1);
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES   ('Fotocopia doble faz ', 4554387, 3, 7, 10);
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES ('toner', 13876675, 3, 10, 1);
INSERT INTO productovendido (detalle, idFactura, idUsuario, idProducto, cantidad_vendida) 
VALUES ('Minas HB', 9753, 2, 25, 1); 
savepoint punto_2;   

-- release savepoint punto_1;   



