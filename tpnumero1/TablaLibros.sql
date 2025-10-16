--Informacion libros de la biblioteca
create table libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );
--informacion de lo que hay en los libros
 select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'libros';