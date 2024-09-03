CREATE TABLE squema.TableName(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Surname VARCHAR(20),
    Created DATE DEFAULT CURRENT_DATE(), --Cada vez que yo no rellene este registro y los demás si, entonces me llenará la fecha con la del sistema.
    Email VARCHAR(50),
    CHECK(age >= 18) -- Solo me acepte datos cuando el usuario tenga más de 18 años
); 


-- Clave foranea para conectar a la clave principal

-- Esta es mi tabla principal

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Tabla con clave foranea conectando a la clave principal para guardar número de cédula, así ya tengo mi relación 1:1
CREATE TABLE `C.C`(
	`c.c_id` INT AUTO_INCREMENT PRIMARY KEY,
	number INT NOT NULL ,
	id INT,
	UNIQUE(`c.c_id`),
	FOREIGN KEY(id) REFERENCES users(id) -- la foreign key se está conectando a la tabla users en la columna id donde está la clave primaria
);