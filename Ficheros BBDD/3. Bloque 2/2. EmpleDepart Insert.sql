

INSERT INTO Depart VALUES (10, 'CONTABILIDAD', 'SEVILLA');
INSERT INTO Depart VALUES (20, 'INVESTIGACIÓN', 'MADRID');
INSERT INTO Depart VALUES (30, 'VENTAS', 'BARCELONA');

INSERT INTO Emple VALUES (7839, 'REY', 'PRESIDENTE', NULL, '2010/11/17', 3900, 0, 10);
INSERT INTO Emple VALUES (7698, 'NEGRO', 'DIRECTOR', 7839, '2010/05/01', 2200, 0, 30);
INSERT INTO Emple VALUES (7738, 'CEREZO', 'DIRECTOR', 7839, '2010/09/06', 2210, 0, 10);
INSERT INTO Emple VALUES (7566, 'JIMÉNEZ', 'DIRECTOR', 7839, '2010/02/04', 2300, 0, 20);
INSERT INTO Emple VALUES (7499, 'ARROYO', 'VENDEDOR', 7698, '2009/02/20', 1200, 240, 30);
INSERT INTO Emple VALUES (7521, 'SALA', 'VENDEDOR', 7698, '2010/02/22', 960, 390, 30);
INSERT INTO Emple VALUES (7654, 'MARTÍN', 'VENDEDOR', 7698, '2010/09/29', 965, 1000, 30);
INSERT INTO Emple VALUES (7844, 'TOVAR', 'VENDEDOR', 7698, '2010/09/08', 1100, 0, 30);
INSERT INTO Emple VALUES (7900, 'JIMENO', 'EMPLEADO', 7698, '2010/12/03', 725, 0, 30);
INSERT INTO Emple VALUES (7369, 'SÁNCHEZ', 'EMPLEADO', 7900, '2012/12/12', 600, 0, 20);
INSERT INTO Emple VALUES (7788, 'GIL', 'ANALISTA', 7566, '2013/04/23', 2350, 0, 20);
INSERT INTO Emple VALUES (7876, 'ALONSO', 'EMPLEADO', 7788, '2013/08/09', 860, 0, 20);

SELECT * FROM Depart;
SELECT * FROM Emple;