SELECT NombreP, NombreD
FROM Perro
INNER JOIN Dueño
ON DNI_Dueño = DNI AND NombreD LIKE "Pedro";