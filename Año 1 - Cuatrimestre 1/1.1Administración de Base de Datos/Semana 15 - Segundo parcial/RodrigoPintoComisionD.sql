/*1) Seleccionar el nombre, el oficio y la localizacion de los departamentos donde trabajan los vendedores.*/
SELECT e.nombre, e.oficio, d.localizacion
FROM empleado e
JOIN departamento d 
ON e.depto_nro = d.depto_nro
WHERE e.oficio = 'Vendedor';

/*2) Listar los nombres de los empleados cuyo nombre termine con la letra "o"*/
SELECT nombre
FROM empleado
WHERE nombre LIKE '%o';

/*3) Seleccionar el nombre, salario y localidad donde trabajan los empleados que tengan un salario entre 10000 y 13000*/
SELECT e.nombre, e.salario, d.localizacion
FROM empleado e
JOIN departamento d 
ON e.depto_nro = d.depto_nro
WHERE e.salario BETWEEN 10000 AND 13000;

/* 4) Visualizar el nombre de los departamentos con más de 5 empleados*/
SELECT d.nombre_depto
FROM departamento d
JOIN empleado e ON d.depto_nro = e.depto_nro
GROUP BY d.nombre_depto
HAVING COUNT(e.codigo_c) > 5;

/*5) Mostrar los datos de los empleados que trabajan en el departamento de "contabilidad", ordenados por nombre*/
SELECT e.*
FROM empleado e
JOIN departamento d ON e.depto_nro = d.depto_nro
WHERE d.nombre_depto = 'contabilidad'
ORDER BY e.nombre;

/*6) Calcular el salario mínimo de los empleados del departamento "VENTAS"*/
SELECT MIN(e.salario) AS salario_minimo
FROM empleado e
JOIN departamento d ON e.depto_nro = d.depto_nro
WHERE d.nombre_depto = 'ventas';

/*7) Visualizar la cantidad de empleados de cada departamento.*/
SELECT d.nombre_depto AS departamento, COUNT(e.codigo_c) AS cantidad_empleados
FROM departamento d
LEFT JOIN empleado e 
ON d.depto_nro = e.depto_nro
GROUP BY d.depto_nro, d.nombre_depto;

/*8) Para cada oficio obtener la suma de salarios*/
SELECT oficio, SUM(salario) AS suma_salarios
FROM empleado
GROUP BY oficio;

/*9) Mostrar los datos de los empleados cuyo salario sea mayor que la media de todos los salarios*/
SELECT *
FROM empleado
WHERE salario > (SELECT AVG(salario) FROM empleado);

/*10) Seleccionar el nombre del empleado que tiene máximo salario (resolver con subconsulta)*/
SELECT nombre
FROM empleado
WHERE salario = (
    SELECT MAX(salario) 
    FROM empleado
);

/*11) Mostrar los datos del empleado que tiene el salario más bajo en el departamento de "VENTAS" (resolver con subconsulta).*/
SELECT *
FROM empleado 
WHERE salario = ( 
SELECT MIN(salario) 
FROM empleado 
WHERE depto_nro = (
SELECT depto_nro 
FROM departamento
 WHERE nombre_depto = 'ventas') );

/*12) Incrementar en un 10% el sueldo de los empleados del departamento 10.*/
UPDATE empleado
SET salario = salario * 1.10
WHERE depto_nro = 10;

/*13) En la tabla EMPLEADO borrar todos los empleados que sean del departamento 20 y sean "ANALISTAS".*/
SELECT *
FROM empleado
WHERE depto_nro = 20 AND oficio = 'Analista';

DELETE FROM empleado
WHERE depto_nro = 20 AND oficio = 'Analista';

/*14) Crear una vista que devuelva un listado completo de todos los empleados incluyendo el nombre de los departamentos.*/
CREATE VIEW VistaEmpleadosDepartamentos 
AS SELECT e.codigo_c, e.nombre, e.edad, e.oficio, e.dir, e.fecha_alt, e.salario, e.comision, d.nombre_depto 
FROM empleado e 
JOIN departamento d 
ON e.depto_nro = d.depto_nro;   

SELECT * FROM VistaEmpleadosDepartamentos;