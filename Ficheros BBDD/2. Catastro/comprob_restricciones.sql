


DELETE FROM Municipio WHERE ID_Mun=10;

SELECT * FROM Vivienda;

UPDATE Municipio SET ID_Mun=80 WHERE ID_Mun=10;


DELETE FROM Vivienda WHERE IDViv=103;

SELECT * FROM Habitante;

UPDATE Vivienda SET IDViv=183 WHERE IDViv=103;




DELETE FROM Municipio WHERE ID_Mun=10;

SELECT * FROM Habitante;

UPDATE Municipio SET ID_Mun=10 WHERE ID_Mun=80;
SELECT * FROM Habitante;




DELETE FROM Vivienda WHERE IDViv=100;

UPDATE Vivienda SET IDViv=180 WHERE IDViv=100;
SELECT * FROM Propietario;


--CREAR ÍNDICE:
CREATE INDEX IDX_apellido
ON Habitante (apellido);


--CREAR VISTA
CREATE VIEW ListaHabitantes
AS SELECT NOMBRE, APELLIDO, FechaNac, JefeFamilia
FROM Habitante

UPDATE ListaHabitantes SET FechaNac='1971-07-14' WHERE FechaNac='1994-07-16';
