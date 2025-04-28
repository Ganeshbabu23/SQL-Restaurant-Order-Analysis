-- combaining both table

select*from menu_items;
select*from order_details;

select*
from order_details o
left join menu_items m on o.item_id=m.menu_item_id;



-- least and most ordered items and what category they are in

#least ordered item
select item_name,category, count(order_details_id) as num_purchases
from order_details o
left join menu_items m on o.item_id=m.menu_item_id
group by item_name,category
order by num_purchases;

# most ordered item 

select item_name,category,count(order_details_id) as num_purchases
from order_details o
left join menu_items m on o.item_id=m.menu_item_id
group by item_name,category
order by num_purchases desc;
	


-- top 5 orders that spent money

select order_id,sum(price) as total_spend
from order_details o
left join menu_items m on o.item_id=m.menu_item_id
group by order_id
order by total_spend desc
limit 5;



-- details of highest spending order

select category,count(item_id) 
from
order_details o
left join menu_items m on o.item_id=m.menu_item_id
where order_id=440
group by category;



-- details of top 5 orders



select order_id,sum(price) as total_spend
from order_details o
left join menu_items m on o.item_id=m.menu_item_id
group by order_id
order by total_spend desc
limit 5;



-- details of highest spending order

select order_id, category,count(item_id) 
from
order_details o
left join menu_items m on o.item_id=m.menu_item_id
where order_id in(440,2075,1957,330,2675)
group by category,order_id;