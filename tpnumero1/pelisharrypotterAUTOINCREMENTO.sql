 drop table if exists peliculas;
--creamos la tabla peliculas
create table peliculas (
  codigo serial,
  titulo varchar(40),
  actor varchar(20),
  duracion int,
  primary key (codigo)
 );
--agrego las columnas de la tabla
 select table_name,column_name,udt_name,character_maximum_length,is_nullable 
  from information_schema.columns 
  where table_name = 'peliculas';

--toda la info dentro de la tabla peliculas
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','xxx',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','xxx',190);
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('La vida es bella','zzz',220);
--visualizamos la tabla 
 select * from peliculas;

 update peliculas set actor='Daniel R.' where codigo=3;

 delete from peliculas where titulo='La vida es bella';

 delete from peliculas where duracion=120;

 select * from peliculas;

 insert into peliculas (titulo,actor,duracion)
  values('Mujer bonita','Richard Gere',120);
--toda la tabla pelicullas con todas su actualizacion acontinuacion
 select * from peliculas;