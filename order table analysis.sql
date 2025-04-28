select*from order_details;


-- date range of table

select min(order_date),max(order_date)
from order_details;


-- total order where made within the date range

select  count( distinct order_id)
from order_details;


-- how many items where ordered

select count(*) from
 order_details
 ;


-- order with most number of items

select order_id,count(item_id) as total_orders
from order_details
group by order_id 
order by total_orders desc;


-- orders more than 12 items



select order_id,count(item_id) as total_orders
from order_details
group by order_id 
having total_orders > 12;



SELECT COUNT(*) AS number_of_orders
FROM (
    SELECT order_id
    FROM order_details
    GROUP BY order_id
    HAVING COUNT(item_id) > 12
) AS temp;
