select f.category, f.price as MAX_PRICE, f.product_name
from (select category, max(price) as price
      from FOOD_PRODUCT
      group by category) f1, FOOD_PRODUCT f
where f1.price = f.price and f1.category = f.category and f.category in ('과자', '국', '김치', '식용유')
group by category 
order by MAX_PRICE desc
