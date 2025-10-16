--tabla sobre el usuario
create table usuarios (
   nombre varchar(30),
   clave varchar(10)
 );
--columnas de la tabla usuarios
select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'usuarios';