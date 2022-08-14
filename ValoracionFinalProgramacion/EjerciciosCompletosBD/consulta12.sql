SELECT NombreP, Fecha_nac, Sexo
FROM Perro
WHERE Sexo = "Macho" AND Fecha_nac BETWEEN '2020-01-01' AND '2022-12-31'