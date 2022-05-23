
--CARGAR FICHEROS SQL desde ruta local:
SOURCE /ubicacion_del_archivo;

-- Para crear base de datos:
CREATE DATABASE IF NOT EXISTS empresa;


-- Para mostrar bases de datos creadas: 
show databases;

-- Para entrar en una bbdd y trabajar en ella: 
use empresa;

-- Para crear tablas en la base de datos seleccionada:
CREATE TABLE empleados (
emp_no INT NOT NULL PRIMARY KEY,
nombre VARCHAR (45),
apellido VARCHAR (45),
oficio VARCHAR (25),
fecha_alt DATE,
salario FLOAT (6,2),
comision INT,
departamento INT);


--Para describir la info. de la tabla empleados.
describe empleados;

--Para consultar la info. de la tabla empleados.
SELECT * FROM empleados;

--Para insertar información en los campos respectivos:
INSERT INTO empleados VALUES (001, 'LENON', 'ACACIO', 'CEO', '2016/07/16', 3500, 20000, 10);
INSERT INTO empleados VALUES (002, 'PEDRO', 'VALBUENA', 'ABOGADO', '2018/08/11', 3000, 2000, 20);
INSERT INTO empleados VALUES (003, 'MARTA', 'DIAZ', 'CONTABLE', '2016/07/16', 1200, 200, 30);
INSERT INTO empleados VALUES (004, 'RAMON', 'MARCANO','CHOFER', '2016/07/16', 1500, 125, 40);
INSERT INTO empleados VALUES (005, 'SABRINA', 'CARPENTER','SECRETARIA', '2016/07/16', 500, 300, 50);

-- Para CARGA DE DATOS A LAS TABLAS:
-- El formato del doc tiene que estar en CSV preferiblemente en un notepad separado por ';'.
-- El comando sería:

LOAD DATA INFILE 'C:/ProgramData/MySQL/ MySQL Server 8.0/Uploads/nombre_archivo.csv'
INTO TABLE nombre_tabla
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


--Para crear vistas:
CREATE [OR REPLACE]
VIEW nombre_vista
AS query

--o también:
CREATE VIEW nombre_vista
AS SELECT nombre_columna(s)
FROM nombre_tabla
WHERE condicion;

--Podemos hacer una select del nombre de la vista creada, ejemplo:
SELECT * FROM nombre_vista;

--Ejemplo de vista de la tabla empleados:
CREATE VIEW directivos
AS SELECT NOMBRE, APELLIDO, SALARIO
FROM empleados
WHERE SALARIO > 2900;


--Para BORRADOS que afecten los datos sobre los que se ha definido la vista, se deben cumplir las siguientes condiciones:
--Relacion 1:1
--No debe utilizar en su definición cláusulas GROUP BY ni DISTINCT
--No se deben usar uniones ni reuniones externas.

--Para MODIFICACIONES con las vistas, además de las condiciones anteriores, se debe cumplir que ninguna de las columnas que se va a actualizar sea una columna derivada, es decir, definida como una expresión en la vista.

--Para INSERCIONES, además de las condiciones anteriores, se debe cumplir con las siguientes: 
--No nombres duplicados entre los atributos de la vista.
--La vista debe contener todos los atributos de la tabla que no tengan definido un valor predeterminado en la tabla. 
--Las columnas de la vista deben ser referenciadas a columnas simples y no a columnas derivadas. Una columna derivada es aquella a la que nos referimos mendiente una expresión. 

--MODIFICAR DATOS DE UNA TABLA A TRAVÉS DE UNA VISTA:
UPDATE vista_existente SET columna_tabla='MARTINEZ' WHERE columna_tabla='RAMIREZ';


-- Para visualizar los warnings:
SHOW WARNINGS;


--CREAR ÍNDICE:
CREATE INDEX IDX_nombreindice
ON nombretabla (nombrecolumna)


--CREACION DE CLAVE FORÁNEA con restricciones de intregridad.
--la definimos al momento de crear la tabla.
CONSTRAINT nombre_restriccion FOREIGN KEY (campo_fk) REFERENCES nombre_tabla_a_relacionar (nombre_col_a_relacionar) ON DELETE RESTRICT ON UPDATE CASCADE;

--BORRADO Y CREACION DE UNA NUEVA CLAVE FORANEA con restriccion de integridad:
ALTER TABLE nombre_tabla DROP FOREIGN KEY nombre_fk

ALTER TABLE nombre_tabla ADD CONSTRAINT nombre_restric FOREIGN KEY (nombre_campo_fk) REFERENCES nombre_tabla_a_relacionar (nombre_col_a_relacionar) ON DELETE restrict_cascade_setnull ON UPDATE restrict_cascade_setnull;


--BORRADO DE CLAVE FORÁNEA Y ESTABLECER UNA NUEVA CON RESTRICCIONES DISTINTAS.

ALTER TABLE Vivienda DROP FOREIGN KEY fk_IDMun;

ALTER TABLE Vivienda DROP IDMun;

ALTER TABLE Vivienda ADD IDMun INT NOT NULL;

ALTER TABLE vivienda ADD CONSTRAINT fk_IDMun FOREIGN KEY (IDMun) REFERENCES Municipio(ID_Mun) ON DELETE RESTRICT ON UPDATE CASCADE;




--ELIMINAR TABLAS
DROP TABLE IF EXISTS nombre_tabla;

--ELIMINAR REGISTROS DE TABLAS:
DELETE FROM nombre_tabla WHERE condicion; -- ejemplo de condicion: no_dpto = 20

--ACTUALIZAR REGISTROS DE TABLAS:
UPDATE nombre_tabla SET valor_nuevo WHERE valor_actual;
--ejemplo: UPDATE FROM nombre_tabla SET dpto_no=200 WHERE dpto_no=20;


--INSERTAR nuevos registros a una tabla:
INSERT INTO nombre_tabla VALUES (reg_1, 'reg_2', reg_3);


--HAVING

SELECT nombre, avg(edad) FROM tabla where sexo= 'F'
group by nombre
having avg(edad) > 20;