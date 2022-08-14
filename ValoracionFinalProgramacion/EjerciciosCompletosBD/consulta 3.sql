INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueño) VALUES
(6, "Ramon", "2008-02-12", "Macho", 32602514),
(7, "Lisa", "2007-04-10", "Hembra", 42897141);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
(6, "2017-05-25", 6, 'Se trato: Corte de pelo y baño', "$10000"),
(7, "2016-04-21", 7, 'Se trato: Corte de pelo y baño', "$14000");

SELECT Fecha, Perro, Nombre
FROM Historial
INNER JOIN Perro
ON Perro = ID_Perro;

SET SQL_SAFE_UPDATES = 0; /* Primero desactive el modo seguro para poder modificar un registro*/

/* Primero elimine sobre la tabla historial, sino, debido a que ID_Perro era clave foranea sobre Perro de Historial, no me dejaba*/

DELETE 
FROM Historial 
WHERE Perro = 6;

DELETE 
FROM Historial
WHERE Perro = 7;

DELETE 
FROM Perro 
WHERE Nombre = "Ramon";

DELETE 
FROM Perro 
WHERE Nombre = "Lisa";

