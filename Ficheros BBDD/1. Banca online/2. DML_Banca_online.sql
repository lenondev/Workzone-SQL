--Insercion de datos.

INSERT INTO cliente VALUES (001, 'LENON', 'ACACIO', 'MADRID', 'lenon@.com');
INSERT INTO cliente VALUES (002, 'MARIA', 'RAMIREZ', 'BARCELONA', 'maria@.com');
INSERT INTO cliente VALUES (003, 'JUAN', 'PEREZ', 'CADIZ', 'juan@.com');
INSERT INTO cliente VALUES (004, 'PEDRO', 'RODRIGUEZ', 'GALICIA', 'pedro@.com');
INSERT INTO cliente VALUES (005, 'LUISA', 'MARTIN', 'VALENCIA', 'luisa@.com');

SELECT * FROM cliente;


INSERT INTO cuenta VALUES (111, 2000, '2021/01/10', '2020/07/16');
INSERT INTO cuenta VALUES (222, 1300, '2021/04/10', '2019/09/10');
INSERT INTO cuenta VALUES (333, 1800, '2021/01/11', '2018/04/04');
INSERT INTO cuenta VALUES (444, 700, '2021/03/12', '2017/05/11');
INSERT INTO cuenta VALUES (555, 2500, '2021/02/13', '2016/08/17');

SELECT * FROM cuenta;


INSERT INTO credito VALUES (50, '2015/10/08', 50000, 2, 40,5000,001);
INSERT INTO credito VALUES (40, '2014/06/09', 20000, 1, 82,3000,002);
INSERT INTO credito VALUES (30, '2013/07/10', 80000, 3, 36,8000,003);
INSERT INTO credito VALUES (20, '2012/08/11', 70000, 3, 110,7000,004);
INSERT INTO credito VALUES (10, '2011/09/12', 60000, 2, 40,4000,005);

SELECT * FROM credito;


INSERT INTO tiene VALUES (001,111);
INSERT INTO tiene VALUES (002,222);
INSERT INTO tiene VALUES (003,333);
INSERT INTO tiene VALUES (004,444);
INSERT INTO tiene VALUES (005,555);

SELECT * FROM tiene;