CREATE TABLE squema.TableName(
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Surname VARCHAR(20),
    Created DATE DEFAULT CURRENT_DATE(), --Cada vez que yo no rellene este registro y los demás si, entonces me llenará la fecha con la del sistema.
    Email VARCHAR(50),
    CHECK(age >= 18) -- Solo me acepte datos cuando el usuario tenga más de 18 años
); 