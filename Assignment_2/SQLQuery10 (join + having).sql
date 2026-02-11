select * from customers
select * from orders

--Customers with more than 3 orders
select c.customer_id, c.customer_name, count(order_id) as tot_orders
from Customers c
join Orders o
on
	c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having count(order_id) > 3;



--Departments with more than 5 employees
select d.department_id, d.department_name, count(e.employee_id) as emp_count
from Departments d
join Employees e
on
	e.department_id = d.department_id
group by d.department_id, d.department_name
having count(e.employee_id) > 4;


--Products ordered more than 1 times
select p.product_id, p.product_name, count(oi.order_id)
from Products p
left join OrderItems oi
on
	p.product_id = oi.product_id
group by p.product_id, p.product_name
having count(oi.order_id) > 1;


select * from customers
select * from orders

--Customers with total order value > X
select c.customer_id, c.customer_name, sum(o.amount)
from Customers c
join Orders o
on
	c.customer_id = o.customer_id
group by c.customer_id, c.customer_name 
having sum(o.amount) > 5000;