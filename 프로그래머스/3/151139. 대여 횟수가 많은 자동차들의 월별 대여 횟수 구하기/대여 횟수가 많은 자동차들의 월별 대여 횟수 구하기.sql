select MONTH(h1.START_DATE) as MONTH, h1.car_id, count(h1.history_id) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY h1
where YEAR(h1.START_DATE) = 2022 and h1.car_id in (select h2.car_id
                                      from CAR_RENTAL_COMPANY_RENTAL_HISTORY h2
                                      where MONTH(h2.START_DATE) IN (8,9,10) and h1.car_id = h2.car_id
                                      group by h2.car_id
                                      having count(h2.car_id) >=5) and MONTH(h1.START_DATE) IN (8,9,10) 
group by MONTH, h1.car_id
having RECORDS > 0
order by MONTH, h1.car_id desc