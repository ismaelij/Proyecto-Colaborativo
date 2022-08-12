CREATE DATABASE bdd_valoracion_final;
USE bdd_valoracion_final;

CREATE TABLE Dueno(
DNI INT NOT NULL,
Nombre VARCHAR(30),
Apellido VARCHAR(30),
Telefono VARCHAR(30),
Dirección VARCHAR(50),
CONSTRAINT PK_Dueno PRIMARY KEY(DNI));

CREATE TABLE Perro(
ID_Perro INT NOT NULL,
Nombre VARCHAR(30),
Fecha_nac DATE,
Sexo VARCHAR(15),
DNI_dueno INT,
CONSTRAINT PK_Perro PRIMARY KEY(ID_Perro),
CONSTRAINT FK_DNI FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI));

CREATE TABLE Historial(
ID_Historial INT,
Fecha DATE,
Perro INT,
Descripción VARCHAR(75),
Monto VARCHAR(15),
CONSTRAINT PK_Historial PRIMARY KEY(ID_Historial),
CONSTRAINT FK_Perro FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro));


INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Dirección) VALUES
(39999111, 'joel', 'britos', 35413446766, 'Carcano 798' ),
(49123453, 'ivanna', 'Fernandez', 351987630, 'Richery 156' ),
(33987145, 'Florencia', 'Quiñonez', 3558987623, 'Cabo primero 1963' ),
(42523125, 'Federico', 'Gonzalez', 35157895, 'florida 531' ),
(37085169, 'Alfredo', 'Palacios', 35418652394, 'AV.gaston diaz 564' );

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES
(1, 'jack', '2018-05-22', 'MACHO', 39999111),
(2, 'Negrita', '2021-10-12', 'HEMBRA', 49123453),
(3, 'Mora', '2019-07-10', 'HEMBRA', 33987145),
(4, 'Ciro', '2021-10-07', 'MACHO', 42523125);


INSERT INTO Historial(ID_Historial, Fecha, Perro, Descripción, Monto) VALUES
(1, '2022-07-03', 1, 'Baño y corte de pelo', '$2250'),
(2, '2022-03-04', 2, 'consulta', '$800'),
(3, '2022-05-12', 3, 'Baño y corte de pelo', '$2250'),
(4, '2022-08-11', 4, 'consulta', '$800');



INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES
(5, 'jack', '2018-05-11', 'MACHO', 37085169);

/*actividad 9 Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123*/ 
     
      UPDATE Dueno
    set Dirección="Libertad 123"
     where DNI="37085169"
     
  