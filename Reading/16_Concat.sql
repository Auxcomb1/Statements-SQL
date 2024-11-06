SELECT concat(name, ' ', surname) AS Full_Name FROM users u WHERE age BETWEEN 1 AND 20;

SELECT concat('FullName: ', name, ' ', surname) FROM users u WHERE age BETWEEN 1 AND 20;

SELECT concat('FullName: ', name, ' ', surname) AS VISTA FROM users u WHERE age BETWEEN 1 AND 20;