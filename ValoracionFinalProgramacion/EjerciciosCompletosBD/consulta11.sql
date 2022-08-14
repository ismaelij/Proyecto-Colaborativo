SELECT NombreD, ID_Perro, NombreP, Fecha_nac, Fecha
FROM Dueño 
INNER JOIN Perro ON DNI = DNI_Dueño
INNER JOIN Historial ON Perro = ID_Perro
WHERE Fecha_nac > "2017-12-31" AND Fecha < "2022-01-01";