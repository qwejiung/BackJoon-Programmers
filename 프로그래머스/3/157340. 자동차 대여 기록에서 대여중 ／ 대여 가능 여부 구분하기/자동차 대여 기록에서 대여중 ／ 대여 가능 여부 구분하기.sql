select car_id, if( car_id in (select car_id
                    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                    where start_date <= '2022-10-16' and end_date >= '2022-10-16'), '대여중', '대여 가능') as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
order by car_id desc

# 2022-10-16