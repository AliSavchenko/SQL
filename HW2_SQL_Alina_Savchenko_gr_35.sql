-- 1. Таблица employees

-- Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name varchar (50) unique not null
);

insert into employees(employee_name)
	values ('Noah'),
			('Liam'),
			('William'),
			('Mason'),
			('Emma'),
			('Olivia'),
			('Ava'),
			('Sophia'),
			('Isabella'),
			('Mia'),
			('Charlotte'),
			('Abigail'),
			('Emily'),
			('Harper'),
			('James'),
			('Benjamin'),
			('Jacob'),
			('Michael'),
			('Elijah'),
			('Ethan'),
            ('Olena'),
			('Katerina'),
			('Roman'),
			('Kseniia'),
			('Olha'),
			('Alina'),
			('Alisa'),
			('Mykola'),
			('Vladyslav'),
			('Oliviu'),
			('Kostyantyn'),
			('Roxana'),
			('Hanna'),
			('Liliia'),
			('Yuliia'),
			('Sofiia'),
			('Mariia'),
			('Elyzaveta'),
			('Leonid'),
			('Nataliia'),
            ('Oleg'),
			('Dariia'),
			('Vera'),
			('Hrystyna'),
			('Maryna'),
			('Varvara'),
			('Vasilisa'),
			('Margarita'),
			('Anastasiia'),
			('Deniza'),
			('Valentyna'),
			('Valeriia'),
			('Serhiy'),
			('Viktoriia'),
			('Diana'),
			('Eva'),
			('Milana'),
			('Aliia'),
			('Nadiia'),
			('Olesiia');

-- 2. Таблица salary

---Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
	values  (1000),
		    (1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);

--3. Таблица employee_salary

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
);
insert into employee_salary(employee_id, salary_id)
	values  (1,16),
			(2,2),
			(3,15),
			(4,3),
			(5,14),
			(6,4),
			(7,13),
			(8,5),
			(9,12),
			(10,6),
			(11,11),
			(12,7),
			(13,10),
			(14,8),
			(15,9),
			(16,10),
			(17,7),
			(18,11),
			(19,6),
			(20,12),
			(21,5),
			(22,13),
			(23,4),
			(24,14),
			(25,3),
			(26,15),
			(27,2),
			(28,16),
			(29,1),
            (30,2),
            (110,16),
			(112,2),
			(113,15),
			(114,3),
			(115,14),
			(116,4),
			(117,13),
			(118,5),
			(119,12),
			(120,6);

--4. Таблица roles

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:
--Junior Python developer
--Middle Python developer
--Senior Python developer
--Junior Java developer
--Middle Java developer
--Senior Java developer
--Junior JavaScript developer
--Middle JavaScript developer
--Senior JavaScript developer
--Junior Manual QA engineer
--Middle Manual QA engineer
--Senior Manual QA engineer
--Project Manager
--Designer
--HR
--CEO
--Sales manager
--Junior Automation QA engineer
--Middle Automation QA engineer
--Senior Automation QA engineer

create table roles(
	id serial primary key,
	role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30); --for PostgreSQL, alter table roles alter column role_name varchar(30) - for MySQL

insert into roles(role_name)
	values ('Junior Python developer'),
		   ('Middle Python developer'),
		   ('Senior Python developer'),
		   ('Junior Java developer'),
		   ('Middle Java developer'),
		   ('Senior Java developer'),
		   ('Junior JavaScript developer'),
		   ('Middle JavaScript developer'),
		   ('Senior JavaScript developer'),
		   ('Junior Manual QA engineer'),
		   ('Middle Manual QA engineer'),
		   ('Senior Manual QA engineer'),
		   ('Project Manager'),
		   ('Designer'),
		   ('HR'),
		   ('CEO'),
		   ('Sales manager'),
		   ('Junior Automation QA engineer'),
		   ('Middle Automation QA engineer'),
		   ('Senior Automation QA engineer');
-- 5. Таблица roles_employee

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

insert into roles_employee(employee_id, role_id)
	values (7,2),
		   (20,4),
		   (3,9),
		   (5,13),
		   (23,4),
		   (11,2),
		   (10,9),
		   (22,13),
		   (21,3),
		   (34,4),
		   (6,7),
		   (1,2),
		   (2,3),
		   (4,4),
		   (8,5),
		   (9,6),
		   (12,7),
		   (13,8),
		   (14,9),
		   (15,10),
		   (16,11),
		   (17,12),
		   (18,13),
		   (19,14),
		   (42,15),
		   (25,16),
		   (26,17),
		   (27,18),
		   (29,19),
		   (30,20),
		   (31,19),
		   (32,18),
		   (33,17),
		   (35,16),
		   (36,15),
		   (37,14),
		   (38,13),
		   (39,12),
		   (40,13),
		   (41,11);

select * from roles_employee;

select * from employees;

select * from roles;

select * from employee_salary;





		

