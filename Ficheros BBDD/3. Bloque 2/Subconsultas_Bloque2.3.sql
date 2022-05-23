-->>>>>>> 2.3 SUBCONSULTAS <<<<<<<<<<--

--Obtener todos los empleados que tienen el mismo oficio que ‘Alonso’

SELECT oficio FROM Emple WHERE apellido = 'ALONSO';

SELECT * FROM Emple WHERE oficio = (SELECT oficio FROM Emple WHERE apellido = 'ALONSO');

--Mostrar el apellido, oficio y salario de los empleados del departamento de ARROYO y que tengan un salario mayor que el de ARROYO

SELECT SELECT salario FROM Emple WHERE apellido = 'ARROYO';
SELECT dept_no FROM Emple WHERE apellido = 'ARROYO';

SELECT apellido, oficio, salario From Emple
WHERE salario > ANY (SELECT salario FROM Emple WHERE apellido = 'ARROYO') AND dept_no = SOME (SELECT dept_no FROM Emple WHERE apellido = 'ARROYO');

--Mostrar los apellidos y oficios de los empleados que tienen el mismo oficio que JIMENEZ, excluido este.

SELECT oficio FROM Emple WHERE apellido = 'JIMENEZ';
SELECT apellido FROM Emple WHERE apellido = 'JIMENEZ';

SELECT apellido, oficio FROM Emple
WHERE oficio = SOME(SELECT oficio FROM Emple WHERE apellido = 'JIMENEZ') AND apellido != ANY (SELECT apellido FROM Emple WHERE apellido = 'JIMENEZ');

--Mostrar aquellos departamentos en los que al menos exista un empleado con comisión (comisión>0)

SELECT dept_no FROM Emple WHERE comision > 0

SELECT dnombre 
FROM Depart
WHERE depart.dept_no IN (SELECT dept_no FROM Emple WHERE comision > 0);