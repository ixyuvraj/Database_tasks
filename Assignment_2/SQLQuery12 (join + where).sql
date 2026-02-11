--Orders after certain date with customer data
select *
from orders o
join customers c
    on o.customer_id = c.customer_id
where o.order_date > '2024-01-01';



--Employees in specific department
select *
from employees e 
join Departments d
on 
	e.department_id = d.department_id
where d.department_name = 'Sales';


--Customers from specific city with orders
select c.customer_id, c.customer_name, o.order_id 
from Customers c
join Orders o
on
	c.customer_id = o.customer_id
where c.city = 'hyderabad';



select * from orders
select * from Products
select * from OrderItems


--Products above certain price in orders
select p.product_id, p.product_name, o.order_id, p.price
from Products p
join OrderItems oi
on
	p.product_id = oi.product_id
join Orders o
on
	oi.order_id = o.order_id
where p.price > 10000;