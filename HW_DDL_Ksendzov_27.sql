/*
 Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.

 */


create table employees (id serial primary key, employee_name varchar(50) not null);

insert into employees (id, employee_name)
values 
(default, 'Anna'),
(default, 'Nikolay'),
(default, 'Fedor'),
(default, 'Sergey'),
(default, 'Michael'),
(default, 'George'),
(default, 'Bob'),
(default, 'Julia'),
(default, 'Vasya'),
(default, 'Petr'),
(default, 'Anna1'),
(default, 'Nikolay1'),
(default, 'Fedor1'),
(default, 'Sergey1'),
(default, 'Michael1'),
(default, 'George1'),
(default, 'Bob1'),
(default, 'Julia1'),
(default, 'Vasya1'),
(default, 'Petr1'),
(default, 'Anna2'),
(default, 'Nikolay2'),
(default, 'Fedor2'),
(default, 'Sergey2'),
(default, 'Michael2'),
(default, 'George2'),
(default, 'Bob2'),
(default, 'Julia2'),
(default, 'Vasya2'),
(default, 'Petr2'),
(default, 'Anna3'),
(default, 'Nikolay3'),
(default, 'Fedor3'),
(default, 'Sergey3'),
(default, 'Michael3'),
(default, 'George3'),
(default, 'Bob3'),
(default, 'Julia3'),
(default, 'Vasya3'),
(default, 'Petr3'),
(default, 'Anna4'),
(default, 'Nikolay4'),
(default, 'Fedor4'),
(default, 'Sergey4'),
(default, 'Michael4'),
(default, 'George4'),
(default, 'Bob4'),
(default, 'Julia4'),
(default, 'Vasya4'),
(default, 'Petr4'),
(default, 'Anna5'),
(default, 'Nikolay5'),
(default, 'Fedor5'),
(default, 'Sergey5'),
(default, 'Michael5'),
(default, 'George5'),
(default, 'Bob5'),
(default, 'Julia5'),
(default, 'Vasya5'),
(default, 'Petr5'),
(default, 'Anna6'),
(default, 'Nikolay6'),
(default, 'Fedor6'),
(default, 'Sergey6'),
(default, 'Michael6'),
(default, 'George6'),
(default, 'Bob6'),
(default, 'Julia6'),
(default, 'Vasya6'),
(default, 'Petr6');

select * from employees;

/*
 * Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
*/

create table salary ( id Serial  primary key,  monthly_salary Int not null);
 
 
insert into salary (id, monthly_salary)
values (default, 1000),
(default, 1100),
(default, 1200),
(default, 1300),
(default, 1400),
(default, 1500),
(default, 1600),
(default, 1700),
(default, 1800),
(default, 1900),
(default, 2000),
(default, 2100),
(default, 2200),
(default, 2300),
(default, 2400),
(default, 2500);

select * from salary;

/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/


create table employee_salary (
id Serial  primary key,
employee_id Int not null unique,
salary_id Int not null
);
select * from employee_salary;

insert into employee_salary (id, employee_id, salary_id)
values(1,3,7),
(2,1,4),
(3,5,9),
(4,40,13),
(5,23,4),
(6,11,2),
(7,52,10),
(8,15,13),
(9,26,4),
(10,16,1),
(11,33,7),
(12,72,3),
(13,73,4),
(14,74,5),
(15,75,6),
(16,76,7),
(17,77,8),
(18,78,9),
(19,79,11),
(20,80,12),
(21,81,13),
(22,82,14),
(23,83,15),
(24,84,16),
(25,85,9),
(26,86,11),
(27,87,12),
(28,88,10),
(29,89,13),
(30,90,4),
(31,91,1),
(32,92,7),
(33,93,4),
(34,94,9),
(35,95,13),
(36,96,4),
(37,97,2),
(38,98,10),
(39,99,5),
(40,100,9);

/*sСоздать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
*/
create table roles ( id Serial  primary key, role_name int not null unique);

alter table roles alter column role_name type varchar(30);

insert into roles (id, role_name) 
values (default, 'Junior Python developer'),
(default, 'Middle Python developer'),
(default, 'Senior Python developer'),
(default, 'Junior Java developer'),
(default, 'Middle Java developer'),
(default, 'Senior Java developer'),
(default, 'Junior JavaScript developer'),
(default, 'Middle JavaScript developer'),
(default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'),
(default, 'Middle Manual QA engineer'),
(default, 'Senior Manual QA engineer'),
(default, 'Project Manager'),
(default, 'Designer'),
(default, 'HR'),
(default, 'CEO'),
(default, 'Sales manager'),
(default, 'Junior Automation QA engineer'),
(default, 'Middle Automation QA engineer'),
(default, 'Senior Automation QA engineer');

select * from roles;

/*
 * Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
*/


select * from employees;


create table roles_employee ( 
	id Serial  primary key,
	 employee_id Int not null unique ,
	 role_id Int not null ,
	 foreign key (employee_id) references employees(id),
	 foreign key (role_id) references roles(id)
);
select * from roles_employee;

insert into roles_employee (id, employee_id, role_id)
values (1,7,2),
(2,20,4),
(3,3,9),
(4,5,13),
(5,23,4),
(6,11,2),
(7,10,9),
(8,22,13),
(9,21,3),
(10,34,4),
(11,6,7),
(12,1,1),
(13,2,2),
(14,4,3),
(15,8,4),
(16,9,5),
(17,12,6),
(18,13,7),
(19,14,8),
(20,15,9),
(21,16,10),
(22,17,11),
(23,18,12),
(24,19,13),
(25,24,14),
(26,25,15),
(27,26,16),
(28,27,17),
(29,28,18),
(30,29,19),
(31,30,20),
(32,31,1),
(33,32,2),
(34,33,3),
(35,35,4),
(36,66,5),
(37,41,6),
(38,45,7),
(39,55,8),
(40,54,9);
