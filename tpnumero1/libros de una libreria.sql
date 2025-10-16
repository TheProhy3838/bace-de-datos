DROP TABLE IF EXISTS libros;
 create table libros(
  codigo int primary key,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15)
 );
--insertamos la info de los libros 
 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

 insert into libros (codigo,titulo,autor,editorial)
  values (4,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 insert into libros (codigo,titulo,autor,editorial)
  values (5,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 update libros set codigo=0
  where titulo='Martin Fierro';
  select*from libros;