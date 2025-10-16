--Informacion sobre pelis
Create table peliculas(
	nombre varchar(20),
	actor varchar(20),
	duracion int,
	cantidad int
);
--info de la tabla de las peliculas
select table_name,column_name,udt_name,character_maximum_length
	from information_schema.columns
	where table_name = 'peliculas';
--el contenido dentro de las pelis
insert into peliculas (nombre,actor,duracion,cantidad)
	values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad)
	values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad)
	values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad)
	values ('Elsa y Fred','China Zorrilla',110,2);
SELECT * FROM peliculas
