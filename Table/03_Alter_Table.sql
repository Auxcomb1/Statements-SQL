ALTER TABLE prueba1.users5
ADD surname varchar(150); -- Agregar columna
-- //
ALTER TABLE prueba1.users5
CHANGE Created Date DATETIME; -- Cambiar nombre de una columna
-- //
ALTER TABLE table_name
DROP COLUMN column_name; -- Eliminar la columna de una tabla
-- //
ALTER TABLE table_name
MODIFY COLUMN column_name datatype; -- Para cambiar el tipo de datos  de una columna