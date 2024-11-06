-- que me traiga todos los resultados menos ? y que me muestre los datos en las columnas

SELECT column1, column2, column3 FROM table_name WHERE NOT column = ?;

-- traigame los datos que no sean nulos en las columnas especificadas

SELECT column1, column2, column3 FROM table_name WHERE NOT column IS NULL AND NOT column IS NULL;

-- no me traiga los que son nulos en fecha de nacimiento y tampoco los que no tengan surname
SELECT * FROM users u WHERE NOT birthdate IS NULL AND surname IS NOT NULL;