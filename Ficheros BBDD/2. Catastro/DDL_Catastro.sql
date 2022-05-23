
CREATE DATABASE IF NOT EXISTS Catastro;

show databases; 

use Catastro;

CREATE TABLE Municipio(
ID_Mun INT NOT NULL PRIMARY KEY,
NomMun VARCHAR(30),
provincia VARCHAR(30));

describe Municipio;

CREATE TABLE Vivienda(
IDViv INT NOT NULL PRIMARY KEY,
direccion VARCHAR(60),
CP INT,
metros INT,
IDMun INT NOT NULL,
CONSTRAINT fk_IDMun FOREIGN KEY (IDMun) REFERENCES Municipio(ID_Mun) ON DELETE RESTRICT ON UPDATE CASCADE);

describe Vivienda;

CREATE TABLE Habitante(
DNI INT NOT NULL PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50),
sexo VARCHAR (15),
FechaNac DATE,
IDViv INT NOT NULL,
IDMun INT NOT NULL,
JefeFamilia VARCHAR (50),
CONSTRAINT fk_IDViv FOREIGN KEY (IDViv) REFERENCES Vivienda(IDViv) ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT IDMun_fk FOREIGN KEY (IDMun) REFERENCES Municipio(ID_Mun) ON DELETE RESTRICT ON UPDATE CASCADE);

describe Habitante;


CREATE TABLE Propietario(
DNI INT NOT NULL,
IDViv INT NOT NULL,
CONSTRAINT DNI_fk FOREIGN KEY (DNI) REFERENCES Habitante(DNI) ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT IDViv_fk FOREIGN KEY (IDViv) REFERENCES Vivienda(IDViv) ON DELETE RESTRICT ON UPDATE CASCADE);

describe Propietario;
