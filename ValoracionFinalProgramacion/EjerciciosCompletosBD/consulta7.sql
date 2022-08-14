SELECT Fecha, NombreP
FROM Historial
INNER JOIN Perro
ON Perro = ID_Perro AND (Fecha >= "2022-07-01" AND Fecha < "2022-08-01");