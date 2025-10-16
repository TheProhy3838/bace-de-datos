drop table if exists peliculas;

create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
);

select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'peliculas';
--
insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Mision imposible','Tom Cruise',180,3);
insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Mision imposible 2','Tom Cruise',190,2);
insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Elsa y Fred','China Zorrilla',110,2);
	
--Toda la info titulo,cantidad,titulo y actor en la misma tabla
Select titulo, cantidad, Null::integer as duracion, null::varchar as actor
from peliculas

union all
--titulo y duracion
select titulo, null, duracion, null
from peliculas

union all
--titulo y actor 
select titulo, null, null, actor
from peliculas
