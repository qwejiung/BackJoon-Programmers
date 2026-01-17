select category, price as MAX_PRICE, product_name
from FOOD_PRODUCT
where (category, price) in (select category, max(price)
                            from FOOD_PRODUCT
                            where category in ('과자', '국', '김치', '식용유')      
                            group by category)
group by category
order by max_price desc

