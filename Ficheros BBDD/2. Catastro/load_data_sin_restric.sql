


LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//MUNICIPIO.csv'
INTO TABLE Municipio
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT * FROM Municipio;

LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//VIVIENDA.csv'
INTO TABLE Vivienda
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT * FROM Vivienda;

LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//HABITANTE.csv'
INTO TABLE Habitante
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT * FROM Habitante;

LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//PROPIETARIO.csv'
INTO TABLE Propietario
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT * FROM Propietario;