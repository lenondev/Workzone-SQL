

--Tabla cliente (DNI) verificar en la tabla credito:

DELETE FROM cliente WHERE DNI=003;

SELECT * FROM credito;

UPDATE cliente SET DNI=007 WHERE DNI=003;

SELECT * FROM credito;

--Tabla cliente (DNI) verificar en la tabla tiene:

DELETE FROM cliente WHERE DNI=007;

SELECT * FROM tiene;

UPDATE cliente SET DNI=003 WHERE DNI=007;

SELECT * FROM tiene;

--Tabla cuenta (numero) verificar en la tabla tiene:

DELETE FROM cuenta WHERE numero=333;

SELECT * FROM tiene;

UPDATE cuenta SET numero=777 WHERE numero=333;

SELECT * FROM tiene;