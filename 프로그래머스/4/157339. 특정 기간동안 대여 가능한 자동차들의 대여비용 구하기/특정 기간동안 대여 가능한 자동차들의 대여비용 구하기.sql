with plan as (select car_type, discount_rate
              from CAR_RENTAL_COMPANY_DISCOUNT_PLAN
              where car_type in ('세단', 'SUV') and DURATION_TYPE like '30%')
SELECT c.car_id, c.car_type, round(c.daily_fee*30*((100-p.discount_rate)/100)) as FEE
from CAR_RENTAL_COMPANY_CAR c join plan p on c.car_type = p.car_type
where not exists (select 1
                  from CAR_RENTAL_COMPANY_RENTAL_HISTORY h
                  where (START_DATE <= '2022-11-30' and END_DATE >= '2022-11-01') and c.car_id = h.car_id)
having FEE >= 500000 and FEE < 2000000
order by FEE desc, c.car_type, c.car_id desc
                           