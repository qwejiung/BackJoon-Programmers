
select p.product_id, p.product_name, sum(p.price*o.amount) as TOTAL_SALES
from FOOD_PRODUCT p join FOOD_ORDER o on p.product_id = o.product_id
where o.produce_date like '2022-05%'
group by p.product_id
order by TOTAL_SALES desc, p.product_id
