USE mysql;
-- *** Crear dos usuarios ***

CREATE USER 'noelia@localhost' IDENTIFIED BY 'noelia89'; -- Creo el usuario noelia@localhost con su contraseña combinando CREATE USER e IDENTIFIED BY
CREATE USER 'ileana@localhost' IDENTIFIED BY 'ileana123'; -- Creo el usuario ileana@localhost con su contraseña combinando CREATE USER e IDENTIFIED BY 

-- *** Uno de los usuarios creados deberá tener permisos de sólo lectura sobre todas las tablas ***
GRANT SELECT ON gamers_model TO 'noelia@localhost'; -- Otorgo permisos de lectura sobre todas las tablas de gamers_model

-- *** El otro usuario deberá tener permisos de lectura, inserción y modificación de datos ***
GRANT SELECT, INSERT, UPDATE ON gamers_model TO 'ileana@localhost'; -- Otorgo permisos de lectura, inserción y modificación sobre gamers_models
