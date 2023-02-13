CREATE DATABASE CONTACTOS1;
GO
USE CONTACTOS1

--CREAR UNA TABLA AMIGOS
CREATE TABLE AMIGOS(
id_categoria int primary key identity (1,1),
nombre_categoria varchar (100)
)

select * from AMIGOS 

--CREAR UNA TABLA SEXO

CREATE TABLE SEXO(
id_genero int primary key identity(1,1),
nombre varchar(20) not null 
)
select * from SEXO

--CREAR UNA TABLA TIPO DE AMIGO

CREATE TABLE TIPO_DE_AMIGO(
id_tipo int primary key identity(1,1),
nombre_tipo varchar(30) not null,
apellido_amigo varchar(30) not null,
fecha_nacimiento date not null,
id_genero int not null,
correo varchar(30) not null,
telefono varchar(15) not null,
direccion varchar(100) not null,
id_categoria int not null,
FOREIGN KEY (id_categoria) REFERENCES AMIGOS (id_categoria),
FOREIGN KEY (id_genero) REFERENCES sexo (id_genero),
)

select * from TIPO_DE_AMIGO

--LLENAR LA TABLA AMIGOS

insert into AMIGOS values('Ernesto');
insert into AMIGOS values('Joel');
insert into AMIGOS values('Christopher');
insert into AMIGOS values('Israel');
insert into AMIGOS values('Ismael');
insert into AMIGOS values('Hector');
insert into AMIGOS values('Salome');
insert into AMIGOS values('Juan');
insert into AMIGOS values('Aurisbel');
insert into AMIGOS values('Dolphy');

select * from AMIGOS

--introducir la tabla sexo

insert into SEXO values('Masculino');
insert into SEXO values('Femenino');

select * from SEXO

--tipo de amigo

insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('marcos','segura','1998-03-11','1','segura88@gmail.com','809-544-6532','narcisa #1','1');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('joel','ramos','1995-12-01','1','ramos33@gmail.com','809-544-6532','trinitario #33','4');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('israel','decena','1993-12-12','1','ecena76@gmail.com','809-544-6532','almarosa #24','8');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('ismael','reyes','1997-11-22','1','reyes34@gmail.com','809-544-6532','cancino #54','6');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('ernesto','perez','1996-21-04','1','perex6@gmail.com','809-544-6532','villa faro 32','5');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('aurisbel','raime','1993-09-03','1','raime00@gmail.com','809-544-6532','invivienda #78','4');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('dolphy','terrero','1995-05-05','1','terrero36@gmail.com','809-544-6532','las cobas #54','3');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('salome','ortiz','1998-03-06','1','ortiz43@gmail.com','809-544-6532','Distrito nacional #66','2');
insert into TIPO_DE_AMIGO (nombre_tipo, apellido_amigo, fecha_nacimiento, id_genero, correo, telefono, direccion, id_categoria ) values('christopher','encarnacion','1998-03-01','1','carnaion68@gmail.com','809-544-6532','mandinga #20','9');

select * from TIPO_DE_AMIGO