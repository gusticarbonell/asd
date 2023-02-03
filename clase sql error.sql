
CREATE DATABASE Academia;

USE Academia;

CREATE Schema base1;


CREATE TABLE base1.Estudiantes(
Legajo_Estudiante varchar(100) primary key,
Nombre_Estudiante varchar(100),
Apellido_Estudiante varchar(100),
FechaNacimiento_Estudiante date)

DROP TABLE base1.Estudiantes;


Create table base1.Profesor(
Legajo_Profesor varchar (100) not null primary key,
DNI_Profesor int,
Nombre varchar(100),
Apellido varchar (100)
) 

Create table base1.Asignatura(
Id_Asignatura varchar(100) not null primary key,
Nombre_Asignatura varchar(100),
Legajo_Profesor varchar(100) not null,
Legajo_Estudiante varchar(100) not null,
FOREIGN KEY (Legajo_Profesor) REFERENCES base1.Profesor(Legajo_Profesor),
FOREIGN KEY (Legajo_Estudiante) REFERENCES base1.Estudiantes(Legajo_Estudiante)
) 

alter table base1.Estudiantes
add Email VARCHAR(200);

alter table base1.Estudiantes
drop column FechaNacimiento_Estudiante;