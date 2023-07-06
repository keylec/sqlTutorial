create database holamundo;
show databases;

use holamundo;
create table animales(
	id int,
    tipo varchar(255),
    estado varchar(255),
    primary key(id)
);

-- insert into animales(tipo,estado) values ('chanchito','feliz');

-- modificar tabla que ya ha sido creada
alter table animales modify column id int auto_increment ;

-- muestra el codigo necesario para crear la tabla ya existente
show create table animales;

insert into animales(tipo,estado) values ('dragon','feliz');
insert into animales(tipo,estado) values ('felipe','triste');

-- listar registros ingresados en la base de datos
select * from animales;

select * from animales where id=1;

select * from animales where estado='feliz';

-- para indicar otra condicion a la busqueda
-- cruza datos para ver que registros cumplen con esas dos condiciones
select * from animales where estado='feliz' and tipo='chanchito';

select * from animales where estado='feliz' and tipo='felipe';

-- actualizar registros existentes en la bd
update animales set estado = 'feliz' where id = 3;

select * from animales;

delete from animales where estado = 'feliz';

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

delete from animales where id = '3';

select * from animales;

update animales set estado = 'triste' where tipo = 'dragon';
-- esto tambien arroja error 1175

