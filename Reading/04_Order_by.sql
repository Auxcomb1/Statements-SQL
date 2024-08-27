-- me selecciona en la columna edad y me la organiza por la edad de menor a mayor
SELECT * FROM name_table ORDER BY column;

-- ASCENDENTE
SELECT * FROM users ORDER BY age ASC;

-- DESCENDENTE 
SELECT * FROM users ORDER BY age DESC;

-- esta sentencia lo que hace es que me selecciona todos los datos de la tabla users donde esté el dato de email y que me lo ordene ascendentemente
SELECT * FROM users where email = 'martin45melo@gmail.com' order by age asc;