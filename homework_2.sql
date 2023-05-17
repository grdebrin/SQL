-- Вывести всех студентов в таблице.

select * from students;

-- Вывести только Id пользователей.

select id from students;

-- Вывести только имя пользователей.

select name from students;

-- Вывести только email пользователей.

select email from students;

-- Вывести имя и email пользователей.

select name, email from students;

-- Вывести id, имя, email и дату создания пользователей.

select id, name, email, created_on from students;

-- Вывести пользователей где password Mj56YXLV.

select * from students 
where password = 'Mj56YXLV';

-- Вывести пользователей которые были созданы 2021-10-01 10:00:20.

select * from students 
where created_on = '2021-10-01 10:00:20';

-- Вывести пользователей где в имени есть слово Georgiy.

select * from students 
where name like '%Georgiy%';

-- Вывести пользователей где в имени в конце есть l.

select * from students 
where name like '%l';

-- Вывести пользователей где в имени в есть буква а.

select * from students 
where name like '%a%';

-- Вывести пользователей которые были созданы 2021-10-01 10:00:32.

select * from students 
where created_on = '2021-10-01 10:00:32';

-- Вывести пользователей которые были созданы 2021-10-01 10:01:02 и имеют пароль l5mMHDaP.

select * from students 
where created_on = '2021-10-01 10:01:02'
and password = 'l5mMHDaP';

-- Вывести пользователей которые были созданы 2021-10-01 10:01:17 и у которых в имени есть слово Kseniya.

select * from students 
where created_on = '2021-10-01 10:01:17'
and name = 'Kseniya';

-- Вывести пользователей которые были созданы 2021-10-01 10:01:42 и у которых в имени есть s.

select * from students 
where created_on = '2021-10-01 10:01:42'
and name like '%s%';

-- Вывести пользователя у которых id равен 110.

select * from students 
where id = 110;

-- Вывести пользователя у которых id равен 153.

select * from students 
where id = 153;

-- Вывести пользователя у которых id больше 140.

select * from students 
where id > 140;

-- Вывести пользователя у которых id меньше 130.

select * from students 
where id < 130;

-- Вывести пользователя у которых id меньше 127 или больше 188.

select * from students 
where id < 127 or id > 188;

-- Вывести пользователя у которых id меньше либо равно 137.

select * from students 
where id <= 137;

-- Вывести пользователя у которых id больше либо равно 137.

select * from students 
where id >= 137;

-- Вывести пользователя у которых id больше 180 но меньше 190.

select * from students 
where id > 180 and id < 190;

-- Вывести пользователя у которых id между 180 и 190.

select * from students 
where id between 180 and 190;

-- Вывести пользователей где password равен P8bDseNg, vQNXLDOZ, SsVjG77t.

select * from students 
where password in ('P8bDseNg', 'vQNXLDOZ', 'SsVjG77t');

-- Вывести пользователей где created_on равен 2021-10-01 10:00:39, 2021-10-01 10:00:44, 2021-10-01 10:00:49.

select * from students 
where created_on in ('2021-10-01 10:00:39', '2021-10-01 10:00:44', '2021-10-01 10:00:49');

-- Вывести минимальный id.

select min(id) from students;

-- Вывести максимальный.

select max(id) from students;

-- Вывести количество пользователей.

select count(id) as Количество_пользователей from students;

-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

select id, name, created_on from students 
order by created_on asc;

-- Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

select id, name, created_on from students 
order by created_on desc;
