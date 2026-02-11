--Combine all customers and orders
select * from customers c
left join orders o 
on
	c.customer_id = o.customer_id

union

select * from customers c
right join orders o 
on
	c.customer_id = o.customer_id



	--same as above
select * from customers c
full outer join orders o 
on
	c.customer_id = o.customer_id


select c.customer_id,
    c.customer_name,
    o.order_id,
	case
		when o.order_id is null then 'no order'
		when c.customer_id is null then 'no customer'
	end as match_stat
from customers c
left join orders o
on
	c.customer_id = o.customer_id

union 

select 
    c.customer_id,
    c.customer_name,
    o.order_id,
    case
        when o.order_id is null then 'no order'
        when c.customer_id is null then 'no customer'
        else 'matched'
    end as match_status
from Customers c
right join Orders o
    on c.customer_id = o.customer_id
