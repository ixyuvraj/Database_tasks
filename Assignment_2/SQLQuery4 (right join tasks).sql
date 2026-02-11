--All orders with customer info
select * from 
customers c
right join orders o
on
	c.customer_id = o.customer_id;



--All departments even if empty
select  * from Employees e 
right join departments d 
on
	d.department_id = e.department_id



--RIGHT JOIN with WHERE condition
select  * from Employees e 
right join departments d 
on
	d.department_id = e.department_id
where e.salary > 50000;



--IGHT JOIN with COUNT per parent
select d.department_id,  d.department_name , count(e.employee_id) from Employees e 
right join departments d 
on
	d.department_id = e.department_id
group by d.department_id, d.department_name;

