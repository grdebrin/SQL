-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id;

-- Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id
where monthly_salary < 2000;

-- Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary
from employees e 
right join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id
where employee_name is null;

-- Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary
from employees e 
right join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id
where employee_name is null
and monthly_salary < 2000;

-- Найти всех работников кому не начислена ЗП.

select employee_name, salary_id
from employees e 
left join employee_salary es
on e.id = es.employee_id 
where salary_id is null;

-- Вывести всех работников с названиями их должности.

select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id;

-- Вывести имена и должность только Java разработчиков.

select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Java%'
and role_name not like '%JavaScript%';

-- Вывести имена и должность только Python разработчиков.

select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Python%';

-- Вывести имена и должность всех QA инженеров.

select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%QA%';

-- Вывести имена и должность ручных QA инженеров.

select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Manual%QA%';

-- Вывести имена и должность автоматизаторов QA.

select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Automation%QA%';

-- Вывести имена и зарплаты Junior специалистов.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Junior%';

-- Вывести имена и зарплаты Middle специалистов.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Middle%';

-- Вывести имена и зарплаты Senior специалистов.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Senior%';

-- Вывести зарплаты Java разработчиков.

select role_name, monthly_salary
from roles r
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like '%Java%'
and role_name not like '%JavaScript%';

-- Вывести зарплаты Python разработчиков.

select role_name, monthly_salary
from roles r
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like '%Python%';

-- Вывести имена и зарплаты Junior Python разработчиков.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Junior Python%';

-- Вывести имена и зарплаты Middle JS разработчиков.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Middle JavaScript%';

-- Вывести имена и зарплаты Senior Java разработчиков.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Senior Java%'
and role_name not like '%JavaScript%';

-- Вывести зарплаты Junior QA инженеров.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Junior%QA%';

-- Вывести среднюю зарплату всех Junior специалистов.

select avg(monthly_salary) as Средняя_Junior
from roles r
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like 'Junior%';

-- Вывести сумму зарплат JS разработчиков.

select sum(monthly_salary) as Сумма_JavaScript
from roles r
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like '%JavaScript%';

-- Вывести минимальную ЗП QA инженеров.

select min(monthly_salary) as Минимальная_QA
from roles r
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like '%QA%';

-- Вывести максимальную ЗП QA инженеров.

select max(monthly_salary) as Максимальная_QA
from roles r
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like '%QA%';


-- Вывести количество QA инженеров.

select count(employee_name) as Количество_QA
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%QA%';

-- Вывести количество Middle специалистов.

select count(employee_name) as Количество_Middle
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like 'Middle%';

-- Вывести количество разработчиков.

select count(employee_name) as Количество_Developer
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%developer';

-- Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary) as Фонд_Developer
from roles r
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where role_name like '%developer';

-- Вывести имена, должности и ЗП всех специалистов по возрастанию.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
order by monthly_salary;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where monthly_salary < 2300
order by monthly_salary;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id =e.id
join roles r 
on r.id = re.role_id 
join roles_salary rs 
on rs.roles_id = r.id 
join salary s 
on s.id = rs.salary_id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;


