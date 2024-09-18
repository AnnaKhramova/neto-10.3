select product_name from netology.orders
join netology.customers on orders.customer_id = customers.id
where lower(name)=%s;