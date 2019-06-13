create database if not exists staff;


use staff;


create table if not exists employees(
id int unsigned not null AUTO_INCREMENT primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
salary int unsigned not null
);


insert into employees (id, first_name, last_name, salary) value (null, 'Anastasiya', 'Solemanova', 25000);
insert into employees (id, first_name, last_name, salary) value (null, 'Olga', 'Ushakova', 28000);
insert into employees (id, first_name, last_name, salary) value (null, 'Nikolay', 'Tikhonov', 35000);


create table if not exists positions(
id int unsigned not null auto_increment primary key,
position_name varchar(30) not null
);

insert into positions (id, position_name) value (null, 'manager');
insert into positions (id, position_name) value (null, 'crew');

alter table employees add position_id integer not null;
update employees set position_id = 1 where id in (3);
update employees set position_id = 2 where id in (1,2);


select emp.first_name, emp.last_name, emp.salary, pos.position_name
from employees emp
inner join positions pos on emp.position_id = pos.id where emp.salary < 30000;
select emp.first_name, emp.last_name, emp.salary, pos.position_name
from employees emp
inner join positions pos on emp.position_id = pos.id where emp.salary < 30000 and pos.position_name = "programmer";

