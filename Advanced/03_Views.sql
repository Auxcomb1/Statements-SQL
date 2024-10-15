-- Crear vista
CREATE VIEW Adult_users AS
SELECT Name, Age FROM users u 
WHERE Age >= 18;

-- Mostrarla
SELECT * FROM Adult_users;
SELECT * FROM Adult_users ORDER BY Age DESC;

-- Eliminarla
DROP VIEW Adult_users;