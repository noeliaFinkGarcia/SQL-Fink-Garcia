use proyecto_fotocopiadora_finkgarcia;

CREATE TABLE productoVendido (
    detalle varchar (50) NOT NULL,
    idFactura bigint NOT NULL PRIMARY KEY,
    idUsuario bigint NOT NULL,
    idProducto bigint NOT NULL ,
    index(idProducto),
    foreign key (idProducto) references producto(id)
   	);


CREATE TABLE proveedores
 ( id_proveedor int NOT NULL PRIMARY KEY,
  nombre_proveedor varchar (50),
  contactoProveedor bigint NOT NULL
   );
   
      
    CREATE TABLE usuario (
    id bigint NOT NULL PRIMARY KEY auto_increment,
    nombre varchar (50) NOT NULL,
    apellido varchar (50) NOT NULL,
    nombreUsuario varchar (50) NOT NULL,
    contrasena varchar (50) NOT NULL
	);
    
    
    CREATE TABLE producto (
    id bigint NOT NULL auto_increment PRIMARY KEY,
    descripcion varchar (100) NOT NULL,
    precio_lista decimal NOT NULL,
    precio_venta decimal NOT NULL,
    id_usuario bigint NOT NULL, -- Id del usuario que cargó el producto
    stock int NOT NULL,
    index(id_usuario),
    foreign key (id_usuario) references usuario(id)
	);
    
    CREATE TABLE gastos (
	id_compra bigint NOT NULL auto_increment,
    id_factura_compra bigint NOT NULL, PRIMARY KEY,
    total_compra decimal NOT NULL,
    cantidad_comprada int NOT NULL,  -- La idea es relacionar éste valor con el stock de productos
    id_producto bigint NOT NULL,
    INDEX (id_producto) ,
    foreign key (id_producto) references producto(id)
	);