drop table if exists libros;
create table libros(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15)
);
select table_name,column_name,udt_name,character_maximum_length
	from information_schema.columns
	where table_name = 'libros';
--libros de la biblioteca
insert into libros(titulo,autor,editorial)
	values('El aleph','Borges','Planeta');
insert into libros(titulo,autor,editorial)
	values('Martin Fierro','Jose Hernandes','Emece');
insert into libros(titulo,autor,editorial)
	values('Aprenda PHP','Mario Molina','Emece');
select*from libros;
	