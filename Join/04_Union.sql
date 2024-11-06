SELECT Fullname FROM users u 
LEFT JOIN identificador i 
ON u.Id = i.Id_users 
UNION 
SELECT Dni FROM identificador i
RIGHT JOIN users u2 
ON u2.Id = i.Id_users 
;