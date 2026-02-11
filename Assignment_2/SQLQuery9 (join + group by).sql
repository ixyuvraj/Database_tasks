select * from customers
select * from orders

--Order count per customer
select c.customer_id, c.customer_name, count(order_id) as tot_orders
from Customers c
join Orders o
on
	c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;



--Total order amount per customer
select c.customer_id, c.customer_name, sum(amount) as tot_amt
from Customers c
join Orders o
on
	c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;



select * from Employees
select * from Departments

--Employee count per department
select d.department_id, d.department_name , count(e.employee_id) as tot_emp
from Employees e
join Departments d
on
	e.department_id = d.department_id
group by d.department_id, d.department_name;


--Department salary total
select d.department_id, d.department_name , sum(salary) as dept_salary
from Employees e
join Departments d
on
	e.department_id = d.department_id
group by d.department_id, d.department_name;



select * from Products
select * from OrderItems


--Product order count
select p.product_id, p.product_name, count(oi.order_id) as order_count
from Products p
left join OrderItems oi
on
	p.product_id = oi.product_id
group by p.product_id, p.product_name