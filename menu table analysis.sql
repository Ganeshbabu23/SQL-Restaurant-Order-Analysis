-- view menu table
select*from menu_items;

-- find number of items on menu
select distinct count(item_name)
from menu_items;

-- what are the least and most expensive items on the menu

# least expensive
select * 
from menu_items
order by price;

#most expensive
select * 
from menu_items
order by price desc;

-- number of italian dishes
select count(*)from menu_items
where category ='italian'
;



-- least and most expensive italian dishes 

# least expensive

select *from menu_items
where category ='italian'
order by price;

#most expensive
select *from menu_items
where category ='italian'
order by price desc;

-- count of dishes in each category


select category,count(*) 
from menu_items
group by category;


-- avg dishprice in each category

select category,count(menu_item_id) as num_of_dishes
,avg(price) 
from menu_items
group by category;



