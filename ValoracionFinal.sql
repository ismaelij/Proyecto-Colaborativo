/*Creación de tabla y actividades 1 y 2*/

CREATE DATABASE ValoracionF;
USE ValoracionF;


CREATE TABLE Dueno(
DNI INT NOT NULL,
Nombre VARCHAR(45),
Apellido VARCHAR(45),
Telefono INT,
Dirección VARCHAR(50),
CONSTRAINT PK_Dueno PRIMARY KEY(DNI)
);

CREATE TABLE Perro(
ID_Perro INT NOT NULL,
Nombre VARCHAR(45),
Fecha_nac DATE,
Sexo VARCHAR(10),
DNI_dueno INT,
CONSTRAINT PK_Perro PRIMARY KEY(ID_Perro),
CONSTRAINT FK_DNI FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial(
ID_Historial INT,
Fecha DATE,
Perro INT,
Descripción VARCHAR(75),
Monto VARCHAR(15),
CONSTRAINT PK_Historial PRIMARY KEY(ID_Historial),
CONSTRAINT FK_Perro FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro)
);


INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Dirección) VALUES
(28694573, 'Francisco', 'Gonzalez', 35168457, 'Moreno 564' ),
(35946788, 'Laura', 'Alamo', 35866649, 'Colon 2626' ),
(42998644, 'Candela', 'Fernandez', 38614957, 'San Juan 314' ),
(39677481, 'Marcos', 'Muñoz', 55839445, 'Ayacucho 332' ),
(30955682, 'Marcelo', 'Quiroga', 27488569, '25 de Mayo 958' );

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES
(1, 'Diana', '2020-08-26', 'HEMBRA', 28694573),
(2, 'Manchita', '2021-12-12', 'MACHO', 35946788),
(3, 'Luna', '2015-07-16', 'HEMBRA', 42998644),
(4, 'Boro', '2016-10-15', 'MACHO', 39677481),
(5, 'Kira', '2020-02-10', 'HEMBRA', 30955682);

INSERT INTO Historial(ID_Historial, Fecha, Perro, Descripción, Monto) VALUES
(1, '2022-01-31', 1, 'Baño a perro chico', '$2000'),
(2, '2022-03-15', 2, 'Baño a perro chico', '$2000'),
(3, '2022-02-12', 3, 'Corte de pelo', '$2500'),
(4, '2022-05-14', 4, 'Baño a perro grande', '$3000'),
(5, '2022-06-06', 5, 'Baño a perro grande con corte de pelo', '$5000');



INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES
(6, 'Lizi', '2022-01-09', 'HEMBRA', 28694573);

/*actividad 12 de base de datos*/
SELECT ID_Perro, Nombre
FROM Perro
WHERE Sexo='MACHO' AND Fecha_nac BETWEEN '2020-01-01' AND '2022-12-31';
