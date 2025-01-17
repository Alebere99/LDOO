create database Escuela;
use Escuela;



create table Alumnos(
IdAlumno int not null auto_increment,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Fecha_Nacimiento date not null,
Direccion varchar (100) not null,
primary key(IdAlumno)
) engine= InnoDB;

create table Profesor(
IdProfe int not null auto_increment,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Fecha_Nacimiento date not null,
Direccion varchar (100) not null,
primary key(IdProfe),
IdAlumno int not null,
constraint IdAlumno foreign key(IdAlumno)
references alumnos(IdAlumno)
) engine= InnoDB;

