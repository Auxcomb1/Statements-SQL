-- El inner join lo que hace es que me muestra los datos que tienen las columnas en relación
SELECT * FROM users u 
INNER JOIN identificador ON u.Id = identificador.Id_users;

--2 tablas 
SELECT Fullname, Name FROM users u 
INNER JOIN company c ON u.Id_company = c.Id 
ORDER BY age ASC;


--3 tablas
SELECT *
FROM lenguages_users lu 
JOIN users u ON lu.users_Id = u.Id 
JOIN lenguages l ON lu.Lenguages_Id = l.Id

-- sintaxis
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
