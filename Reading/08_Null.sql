/*
Valores de birthdate que no son nulos y me los ordene ascendentemente
*/

SELECT * FROM users u WHERE birthdate IS NOT NULL ORDER BY age ASC;

-- valores que son nulos en birthdate y me los ordene ascendentemente

SELECT * FROM users u WHERE birthdate IS NULL ORDER BY age ASC;

-- valores de birthdate que no sean nulos y que el email contenga gmail.com

SELECT * FROM users u WHERE birthdate IS NOT NULL AND email LIKE '%gmail.com';

