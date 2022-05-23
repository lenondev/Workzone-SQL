use EmpleDepart;

show databases;


CREATE TABLE Depart (
	dept_no INT NOT NULL PRIMARY KEY,
	dnombre varchar(30), 
	loc varchar(30));

CREATE TABLE Emple(
	emp_no INT NOT NULL PRIMARY KEY, 
	apellido varchar(50), 
	oficio varchar(30), 
	dir INT, 
	fecha_alt DATE, 
	salario INT, 
	comision INT, 
	dept_no INT, 
	FOREIGN KEY (dept_no) REFERENCES Depart (dept_no) 
	ON DELETE SET NULL ON UPDATE CASCADE);

ALTER DATABASE EmpleDepart CHARACTER set='latin1'
collate='latin1_spanish_ci';

describe Depart;
describe Emple;