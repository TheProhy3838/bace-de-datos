DROP TABLE IF EXISTS medicamentos; -- si ya existe la tabla medicamento

CREATE TABLE medicamentos(
  codigo INTEGER NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  laboratorio VARCHAR(20),
  precio FLOAT,
  cantidad INTEGER NOT NULL
);
--visualisamos la estructura de la tabla
select table_name, column_name, udt_name,character_maximum_length,is_nullable
from information_schema.columns
where table_name='medicamentos';
--agregamos el valor 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,0,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);
  
select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'','Bayer',15.60,0);
  
select* from medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(5,'Amoxidal jarabe','Bayer',25,120);

 select * from medicamentos
  where laboratorio is null;
SELECT * FROM medicamentos WHERE nombre = 'Sertal gotas';
 select * from medicamentos
  where laboratorio='';

 select * from medicamentos
  where precio is null;

 select * from medicamentos
  where precio=0;

 select * from medicamentos
  where laboratorio<>'';

 select * from medicamentos
  where laboratorio is not null;

 select * from medicamentos
  where precio<>0;

 select * from medicamentos
  where precio is not null;