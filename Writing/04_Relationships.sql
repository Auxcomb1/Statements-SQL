-- muchos a muchos

CREATE TABLE Estudiantes(
	Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Fullname VARCHAR(30),
	email VARCHAR(255)
);

CREATE TABLE Cursos(
	Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombre_curso VARCHAR(50)
);

CREATE TABLE Cursos_Estudiantes_unificados(
	EstudiantesId INT,
	CursosId INT,
	PRIMARY KEY (EstudiantesId, CursosId),
	CONSTRAINT Fk_unified_students FOREIGN KEY(EstudiantesId) REFERENCES Estudiantes(Id) ON DELETE CASCADE,
	CONSTRAINT Fk_unified_Curses FOREIGN KEY(CursosId) REFERENCES Cursos(Id) ON DELETE CASCADE
);

-- 1:1

CREATE TABLE `users` (
  `Id_users` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50),
  `Surname` VARCHAR(50)
);

CREATE TABLE `identificador` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `dni` BIGINT UNIQUE,
  `Id_users` INT UNIQUE,
  FOREIGN KEY (`Id_users`) REFERENCES `users` (`Id_users`);
);

-- 1:n o n:1
CREATE TABLE `Vehículos` (
  `Id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `placa` VARCHAR(10) UNIQUE,
  `Motor` VARCHAR(50),
  `Button` VARCHAR(100) UNIQUE
);

CREATE TABLE `Detenciones` (
  `Id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Placa` VARCHAR(10),
  `Geocerca` VARCHAR(255),
  CONSTRAINT fk_placa FOREIGN KEY (`Placa`) REFERENCES `Vehículos` (`placa`),
  CONSTRAINT fk_geocerca FOREIGN KEY (`Geocerca`) REFERENCES `Ubicaciones` (`Geocerca`);
);

CREATE TABLE `Ubicaciones` (
  `Id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Geocerca` VARCHAR(255) UNIQUE
);