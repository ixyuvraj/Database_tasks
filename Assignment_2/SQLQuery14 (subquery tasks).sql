select *from customers where customer_id in (select customer_id from orders);


select * from customers where customer_id not in ( select customer_id from orders)


select * from products where product_id not in (select product_id from OrderItems)

select * from employees where department_id not in (select department_id from departments)


select * from orders where amount > (select avg(amount) from orders)

--wont work because it needs to be in side sub query whenever working with where clause)
select * from orders where amount > avg(amount)


select *
from employees
where department_id not in (
    select department_id
    from departments
)


select distinct c.customer_id, c.customer_name
from customers c
join orders o
    on c.customer_id = o.customer_id
where o.amount > (select avg(amount) from orders);


--Employees earning more than department average (subquery + join)

select e.employee_id, e.employee_name, e.department_id, avg(e2.salary)
from employees e where e.salary > (
select avg(e2.salary) from employees e2 where e.department_id = e2.department_id)



--how to show even department averaege salary along with it: 
select e.employee_id, e.employee_name, e.department_id, e.salary, d.avg_salary
from Employees e
join(
select department_id , avg(salary) as avg_salary from Employees group by department_id)
d
on
e.department_id = d.department_id
where e.salary > d.avg_salary;


