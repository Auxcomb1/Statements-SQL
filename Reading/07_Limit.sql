-- traigame los datos donde age no contenga nulos con un limite de 3

SELECT * FROM users u WHERE age IS NOT NULL LIMIT 3;

SELECT * FROM users u WHERE age = '15' LIMIT 3;

SELECT * FROM users u WHERE email LIKE '%gmail.com' LIMIT 5;

SELECT * FROM users u WHERE email LIKE '%gmail.com' ORDER BY age DESC LIMIT 5;