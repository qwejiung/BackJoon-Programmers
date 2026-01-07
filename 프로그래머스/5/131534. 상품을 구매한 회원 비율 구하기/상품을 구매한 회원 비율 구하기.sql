select YEAR(s.SALES_DATE) as YEAR, MONTH(s.SALES_DATE) as MONTH, count(distinct s.user_id) as PURCHASED_USERS, round(count(distinct s.user_id)/(select count(*)
                                                             from USER_INFO
                                                             where joined like '2021%'),1) as PUCHASED_RATIO
from ONLINE_SALE s
where s.user_id in (select u.user_id
                    from USER_INFO u
                    where u.joined like '2021%')
group by YEAR, MONTH
order by YEAR, MONTH