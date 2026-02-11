select * from customers
select * from orders

--All customers with orders including NULLs
select * from customers c 
left join orders o 
on 
	o.customer_id = c.customer_id;





--Customers without orders
select * from customers c 
left join orders o 
on 
	o.customer_id = c.customer_id
where o.order_id is null;


select * from Departments
select * from Employees

insert into Departments values
(6, 'Techsupport', 'WFH');



--All departments with employees
select distinct d.department_name from Departments d
left join Employees e 
on
	d.department_id = e.department_id
where e.employee_name is not null;



--Departments without employees
select  d.department_name from Departments d
left join Employees e 
on
	d.department_id = e.department_id
where e.employee_name is null;


select * from Products
select * from orders
select * from OrderItems

--Products not ordered
select * from Products p
left join OrderItems oi
on
	p.product_id = oi.product_id
where oi.order_id is null


--LEFT JOIN with WHERE filter
select * from Products p
left join OrderItems oi
on
	p.product_id = oi.product_id
where p.price < 1000 and oi.order_id is not null;


--LEFT JOIN with LIKE filter
select * from Products p
left join OrderItems oi
on
	p.product_id = oi.product_id
where p.product_name like 'm%' and oi.order_id is not null;