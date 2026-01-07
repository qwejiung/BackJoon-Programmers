select i.INGREDIENT_TYPE, sum(f.total_order) as TOTAL_ORDER
from FIRST_HALF f join ICECREAM_INFO i on f.flavor = i.flavor
group by i.INGREDIENT_TYPE
order by TOTAL_ORDER