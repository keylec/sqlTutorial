create table user(
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key(id)
);

insert into user(name,edad,email) values ('Oscar',25,'oscar@gmail.com');
insert into user(name,edad,email) values ('Layla',15,'layla@gmail.com');
insert into user(name,edad,email) values ('Nicolas',36,'nico@gmail.com');
insert into user(name,edad,email) values ('Chanchito',7,'oscar@gmail.com');

-- seleccionar todos los usuarios
select * from user;

-- limit : limitar las cantidad de registros que se retorna
select * from user limit 1;

-- 
select * from user where edad > 15;

select * from user where edad>=15;

select * from user where edad >20 and email='nico@gmail.com';

--
select * from user where edad > 20 or email = 'layla@gmail.com';

select * from user where email != 'layla@gmail.com';

-- comparacion con rango
select* from user where edad between 15 and 30;
 
 
select * from user where email like '%gmail%';

select * from user where email like '%gmail';

select * from user where email like 'oscar%';

-- ordenar de acuerdo a lo indicado
select * from user order by edad asc;

select * from user order by edad desc;

select max(edad) from user;

select max(edad) as mayor from user;

select min(edad) as menor from user;

select id, name from user;

select id, name as nombre from user;

