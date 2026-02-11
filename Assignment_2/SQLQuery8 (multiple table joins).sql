--customers + orders + order_items
select *
from customers c
join orders o
    on c.customer_id = o.customer_id
join orderitems oi
    on o.order_id = oi.order_id;



--orders + products + suppliers
select
    o.order_id,
    o.order_date,
    p.product_name,
    s.supplier_name,
    oi.quantity,
    p.price
from orders o
join orderitems oi
    on o.order_id = oi.order_id
join products p
    on oi.product_id = p.product_id
join suppliers s
    on p.supplier_id = s.supplier_id;



select
    e.employee_id,
    e.employee_name,
    d.department_name
from employees e
join departments d
    on e.department_id = d.department_id