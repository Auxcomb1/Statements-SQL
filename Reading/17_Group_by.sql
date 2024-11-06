/* si quiero mostrar una tabla mostrando el conteo de edad de un usuario por ejemplo.
se puede utilizar por ejemplo para hacer un recuento de novedades de los usuarios en una tabla*/
SELECT concat('Usuario: ', name, ' ',  surname) AS FullName, count(age) AS 'conteo de edad' FROM users u GROUP BY FullName ;


-- agrupa nombres y cuenta las edades que tienen esos nombres agrupados
SELECT name, count(age) AS Count FROM users u GROUP BY name;