select FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
from REST_INFO
where (food_type, favorites)in (select food_type, max(FAVORITES) as FAVORITES
              from REST_INFO
              group by food_type)
group by food_type
order by food_type desc