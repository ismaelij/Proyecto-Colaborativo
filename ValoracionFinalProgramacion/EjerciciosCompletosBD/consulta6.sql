SELECT Fecha, NombreP
FROM Historial
INNER JOIN Perro
ON Perro = ID_Perro AND (Fecha >= "2022-01-01" AND Fecha < "2023-01-01")