
CREATE DATABASE IF NOT EXISTS banca_online;

show databases; 

use banca_online;

CREATE TABLE cliente(
DNI INT NOT NULL PRIMARY KEY,
nombre VARCHAR(30),
apellidos VARCHAR(30),
direccion VARCHAR(50),
email VARCHAR(20));

describe cliente;

CREATE TABLE cuenta(
numero INT NOT NULL PRIMARY KEY,
saldo FLOAT,
UltimoMovimiento DATE,
fechaCreacion DATE);

describe cuenta;

CREATE TABLE credito(
id_credito INT NOT NULL PRIMARY KEY,
FechaConcesion DATE,
cantidad INT,
interes FLOAT,
plazos INT,
amortizacion INT, 
dni INT NOT NULL, 
CONSTRAINT fk_dni FOREIGN KEY (dni) REFERENCES cliente(DNI) ON DELETE RESTRICT ON UPDATE CASCADE);

describe credito;

CREATE TABLE tiene(
DNI INT NOT NULL,
numero INT NOT NULL,
CONSTRAINT DNI_fk FOREIGN KEY (DNI) REFERENCES cliente(DNI) ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT fk_numero FOREIGN KEY (numero) REFERENCES cuenta(numero) ON DELETE RESTRICT ON UPDATE CASCADE);

describe tiene;