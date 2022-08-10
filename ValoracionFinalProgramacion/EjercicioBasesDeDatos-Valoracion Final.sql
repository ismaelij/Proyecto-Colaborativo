CREATE DATABASE PeluqueriaCanina;

USE PeluqueriaCanina;

CREATE TABLE Dueño
(
DNI INT,
Nombre VARCHAR (20),
Apellido VARCHAR (20),
Telefono  INT,
Direccion VARCHAR (40),
CONSTRAINT Id_Dueño PRIMARY KEY (DNI)
);

CREATE TABLE Perro
(
ID_Perro INT,
Nombre VARCHAR (20),
Fecha_nac DATE,
Sexo VARCHAR (10),
DNI_Dueño INT,
CONSTRAINT PK_Perro PRIMARY KEY (ID_Perro),
CONSTRAINT F_DNI FOREIGN KEY (DNI_Dueño) REFERENCES Dueño (DNI)
);

CREATE TABLE Historial
(
ID_Historial INT,
Fecha DATE,
Perro INT,
Descripcion VARCHAR (60),
Monto VARCHAR (30),
CONSTRAINT PK_Historial PRIMARY KEY (ID_Historial),
CONSTRAINT F_Perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);

INSERT INTO Dueño (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(39787871, 'Ismael', 'Juaristi', 388430464, 'Belgrano 890'),
(12658987, 'Pedro', 'Almodobar', 356602568, 'Castelli 445'),
(20554661, 'Juan', 'Gutierres', 312568024, 'Rivadavia 80'),
(42897141, 'Federico', 'Gimenez', 687501426, 'Mitre 560'),
(32602514, 'Alan', 'Pereyra', 332541528, 'Pedraza 94');

/* Paso B Punto 1 */
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueño) VALUES
(1, 'Pepito', '2011-09-28', 'Macho', 32602514),
(2, 'Felipe', '2009-05-13', 'Macho',  42897141),
(3, 'Laica', '2018-06-23', 'Hembra', 20554661),
(4, 'Anabela', '2013-09-11', 'Hembra', 12658987), 
(5, 'Aquiles', '2020-03-19', 'Macho', 39787871);


INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
(1, '2021-09-12', 5, 'Se trato: Corte de pelo y baño', '$10900' ),
(2,'2022-07-09', 4, 'Se trato: Baño', '$9190'),
(3, '2022-11-04', 3,'Se trato: Corte de pelo','$17999'),
(4, '2021-03-30', 2, 'Se trato: Corte de pelo y baño', '$15000'),
(5, '2022-03-12', 1, 'Se trato: Baño', '$1250');

/* Paso B Punto 2*/
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueño) VALUES (6, 'Camila', '2020-04-18', 'Hembra', 20554661);

/* Paso C Punto 4 */
SET SQL_SAFE_UPDATES = 0; /* Primero desactive el modo seguro para poder modificar un registro*/

UPDATE Perro 
SET Fecha_nac = '2010-12-31'
WHERE Fecha_nac = '2009-05-13';


