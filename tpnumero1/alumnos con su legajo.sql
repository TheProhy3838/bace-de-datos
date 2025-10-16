drop table if exists alumnos;

 create table alumnos(
  legajo varchar(4)not null,
  documento varchar(8)not null,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(legajo, documento)
 );

 select table_name,column_name,udt_name,character_maximum_length,is_nullable 
  from information_schema.columns 
  where table_name = 'alumnos';

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A233','22345345','Perez Mariana','Colon 234');
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A567','23545345','Morales Marcos','Avellaneda 348');

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A642','24545345','Gonzalez Analia','Caseros 444');

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A685','2567801','Miranda Carmen','Uspallata 999');
  select*from alumnos 