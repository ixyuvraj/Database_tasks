select * from customers
select * from orders

--Count orders per customer
select c.customer_id, c.customer_name, count(order_id) as tot_orders
from Customers c
join Orders o
on
	c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;



--Count employees per department
select d.department_id, d.department_name, count(e.employee_id) as emp_count
from Departments d
join Employees e
on
	e.department_id = d.department_id
group by d.department_id, d.department_name


--Count orders per city
select c.city , count(o.order_id) as tot_order
from  Customers c
join Orders o
on
	c.customer_id = o.customer_id
group by c.city;