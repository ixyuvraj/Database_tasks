select * from customers
select * from orders
select * from Products
select * from OrderItems

/* Orders with products (3-table join)
Select multiple columns from joined tables*/

select * from
Customers c
inner join Orders o
on
	c.customer_id = o.customer_id
inner join OrderItems oi
on	
	o.order_id = oi.order_id
inner join Products p
on
	oi.product_id = p.product_id




-- Customers with their orders
select * from customers c 
inner join orders o 
on 
	o.customer_id = c.customer_id;


--Orders with customer name and city
select c.customer_name, c.city, o.order_id from customers c 
inner join orders o 
on 
	o.customer_id = c.customer_id;


select * from Employees
select * from Departments


--Employees with departments
select e.employee_name, d.department_name
from Employees e 
inner join Departments d
on
	e.department_id = d.department_id



--Filter joined rows using WHERE amount > X
select * from
Customers c
inner join Orders o
on
	c.customer_id = o.customer_id
inner join OrderItems oi
on	
	o.order_id = oi.order_id
inner join Products p
on
	oi.product_id = p.product_id

where price > 50000;


--Filter joined rows using LIKE pattern
select * from
Customers c
inner join Orders o
on
	c.customer_id = o.customer_id
inner join OrderItems oi
on	
	o.order_id = oi.order_id
inner join Products p
on
	oi.product_id = p.product_id

where c.customer_name like 's%';
