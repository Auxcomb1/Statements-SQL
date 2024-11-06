SELECT *, 
CASE
	WHEN age >= 20 THEN 'TRUE'
	WHEN age = 19 THEN 'Preparado para la vida laboral'
	ELSE 'FALSE' 
END AS 'CHECK'
FROM users;