-- Esto cuenta cuantos usuarios tienen la edad y que me muestre todos los valores del recuento si son menos de 14 dependiendo de los registros

SELECT count(age) FROM users u HAVING count(age) < 14;
