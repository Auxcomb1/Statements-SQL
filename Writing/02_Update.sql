UPDATE table_name
SET column = '?'
WHERE column 1 = '?'

/* Siempre se debe utilizar la combinación set y where en un update, where es la condición. 
Si no la tiene entonces todos los datos de una tabla se actualizan*/

UPDATE users 
SET surname = 'Gómez'
WHERE name = 'Savitar';

-- ////////////////

UPDATE users 
SET surname = 'Lopez'
WHERE id = '3';