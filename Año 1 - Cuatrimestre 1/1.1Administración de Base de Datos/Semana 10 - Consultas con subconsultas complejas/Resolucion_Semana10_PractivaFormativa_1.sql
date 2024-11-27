use taller;
-- 1) El dueño del taller quiere saber cual es el monto total 
-- que cada cliente debe abonar al asistir al taller. 
-- El informe debe mostrar nombre, apellido, teléfono y monto

SELECT c.Nombre, c.Apellido, c.tel, SUM(p.Monto) AS MontoTotal
FROM cliente c
INNER JOIN vehiculo v ON c.codC = v.codC
INNER JOIN ficha f ON v.codVEH = f.codVEH
INNER JOIN presup p ON f.codF = p.codF
GROUP BY c.Nombre, c.Apellido, c.tel
ORDER BY SUM(P.monto);

-- 2) Tomando la consulta del punto 1, se pide mostrar al cliente o clientes que abona el monto menor.

SELECT c.Nombre, c.Apellido, c.tel, SUM(p.Monto) as MontoTotal
FROM cliente c
JOIN vehiculo v ON c.codC = v.codC
JOIN ficha f ON v.codVEH = f.codVEH
JOIN presup p ON f.codF = p.codF
GROUP BY c.Nombre, c.Apellido, c.tel
HAVING MontoTotal = (
					SELECT MIN(MontoTotal)
						FROM (
							SELECT c2.Nombre, c2.Apellido, c2.tel,SUM(p2.Monto) as MontoTotal
							FROM cliente c2
							JOIN vehiculo v2 ON c2.codC = v2.codC
							JOIN ficha f2 ON v2.codVEH = f2.codVEH
							JOIN presup p2 ON f2.codF = p2.codF
							GROUP BY c2.Nombre, c2.Apellido, c2.tel
							) as MinMonto);
       
    
-- 3) Identificar cual o cuales fueron los mecánicos que 
-- diagnostican que realizaron  la mayor cantidad de revisiones.

SELECT m.Nombre, m.Apellido, count(fm.CodF) as Cantidad_Diagnosticos
FROM mecanico m
INNER JOIN mecdiag md on m.codMec = md.codMec
INNER JOIN fichamd fm on md.codMD = fm.codMD
GROUP BY m.Nombre, m.Apellido
HAVING Cantidad_Diagnosticos = (SELECT MAX(Cantidad_Diagnosticos)
									FROM (
											SELECT m2.CodMec,count(fm2.CodF) as Cantidad_Diagnosticos
											FROM mecanico m2
											INNER JOIN mecdiag md2 on m2.codMec = md2.codMec
											INNER JOIN fichamd fm2 on md2.codMD = fm2.codMD
											GROUP BY m2.CodMec
											) as maxDiag);

