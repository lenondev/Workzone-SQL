-->>>>>>>>>> 2.0 BLOQUE DE CONSULTAS <<<<<<<<<<--

--todos los datos de los empleados del dpto nº 10 ordenados de la A a la Z:

SELECT * FROM Emple
WHERE dept_no = 10
ORDER BY apellido;

--Mostrar el apellido, fecha de alta y salario de los empleados del departamento nª20 donde su oficio sea analista

SELECT apellido, fecha_alt, salario
FROM Emple
WHERE dept_no = 20 AND oficio = 'ANALISTA';

--Mostrar el número, apellidos y oficio de todos los empleados donde su apellido empiece por la letra J

SELECT emp_no, apellido, oficio
FROM Emple
WHERE apellido LIKE 'J%';

--Mostrar los apellidos y oficios de los empleados donde su oficio sea VENDEDOR, ANALISTA o EMPLEADO, ordenando el resultado por apellido

SELECT apellido, oficio
FROM Emple
WHERE oficio IN ('VENDEDOR', 'ANALISTA', 'EMPLEADO')
ORDER BY apellido;

--Mostrar todos los datos de los empleados que cobran más de 2000€ de salario o más de 300€ de comisión

SELECT * FROM Emple
WHERE salario > 2000 OR comision > 300;

--Mostrar todos los datos de los empleados que cobran más de 2000€ de salario y más de 300€ de comisión

SELECT * FROM Emple
WHERE salario > 2000 AND comision > 300;

--Mostrar para cada oficio que sea desarrollado por más de 2 empleados, el nombre del oficio, el número de empleados que lo desarrollan (llamada NºEmpleados), la suma de los salarios (llamada SumaSalarios), la suma de las comisiones (llamada SumaComisiones), el salario máximo y salario mínimo (llamada SalMax y SalMin). Ordena el resultado por suma de los salarios en orden descendente

--perdone el desorden. Seguiré practicando

SELECT dept_no, count(*) FROM Emple


GROUP BY dept_no, oficio HAVING COUNT(*) > 2;



--Sólo consideramos a los empleados no ANALISTAS. Indicar para cada departamento con un salario medio de sus empleados no analistas superior a 1200€, el número de departamento, el número de empleados no analistas y su salario medio, ordenando el resultado por el número de empleados de cada departamento.


SELECT COUNT(dept_no) AS N_dptos, COUNT(oficio) AS No_Analistas, AVG(salario) AS Salario_medio
FROM Emple
WHERE oficio <> 'ANALISTA' AND salario > 1200
ORDER BY COUNT(emp_no);



------------
--forma para declarar el --HAVING

SELECT apellido, avg(salario) FROM Emple WHERE campo=
group by apellido /* el group by despues del where*/
having avg() > 20; /* having despues del gruoup by y antes que order by*/

-------------

--perdone . Seguiré practicando