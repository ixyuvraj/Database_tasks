select * from employees

--Employee with manager name
select a.employee_id, a.employee_name, b.employee_name as manager_name
from Employees a
inner join Employees b
on
	a.manager_id = b.employee_id;

/*update  employees
set manager_id = 103 where employee_id = 105;*/

select * from employees

--Employees under same manager
select a.employee_name , b.employee_name, a.manager_id
from Employees a 
inner join Employees b
on
	a.manager_id = b.manager_id
where a.employee_id <> b.employee_id and a.employee_id > b.employee_id;


--manager id
select a.employee_id, a.employee_name from 
employees a 
inner join Employees b
on
	a.employee_id =b.manager_id;

--same thing as above 
select * from employees where employee_id in (
select manager_id  from employees where manager_id is not null);


--Employee–mentor mapping
select a.employee_id, a.employee_name, b.employee_name as mentor
from Employees  a
left join Employees b
on
	a.manager_id = b.employee_id;



--Show reporting hierarchy pairs
select
    m.employee_name as manager,
    e.employee_name as employee
from Employees e
inner join Employees m
    on e.manager_id = m.employee_id

