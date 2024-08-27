-- Siempre usar update con where o de lo contrario habrá un error fatal
UPDATE users SET age = '21' WHERE age = '26';

-- También si se quiere cambiar 2 campos   
UPDATE users SET age = '14', birthdate = '2014-01-04' WHERE name = 'Carlos';