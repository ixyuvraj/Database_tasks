--All customer–product combinations
select
    c.customer_name,
    p.product_name
from customers c
cross join products p
order by c.customer_name, p.product_name;


--All employee–role combinations

select e.employee_name , r.role_name
from Employees e 
cross join  (values
	('dev'),
	('manager'),
	('analyst'),
	('tester')
) r(role_name);