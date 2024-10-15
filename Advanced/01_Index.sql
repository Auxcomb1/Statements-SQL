-- creación de indice

CREATE INDEX idx_pnombre_persona 
ON Persona(Pnombre_persona);

CREATE INDEX idx_Age 
ON users (Age);

-- eliminación de indice

ALTER TABLE Persona
DROP INDEX idx_pnombre_persona;

-- indice unico

CREATE UNIQUE INDEX idx_pnombre_persona
ON Persona(Pnombre_persona);

-- indice compuesto

CREATE INDEX idx_pnombre_persona
ON Persona(Pnombre_persona, Psurname);