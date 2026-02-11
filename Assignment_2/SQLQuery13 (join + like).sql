select distinct c.customer_name 
from customers c
join orders o
    on c.customer_id = o.customer_id
where c.customer_name like 's%';


select *
from employees e
join departments d
    on e.department_id = d.department_id
where e.employee_name like '%ra%'
  and d.department_name = 'HR';
