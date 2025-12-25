select m.MEMBER_NAME, r1.REVIEW_TEXT, DATE_FORMAT(r1.REVIEW_DATE,'%Y-%m-%d')
from  (select r2.MEMBER_ID, count(*) as max_count
       from REST_REVIEW r2
       group by r2.MEMBER_ID
       order by max_count desc
       limit 1
    ) r , MEMBER_PROFILE m , REST_REVIEW r1
where r.MEMBER_ID = m.MEMBER_ID and r.MEMBER_ID = r1.MEMBER_ID
order by r1.REVIEW_DATE, r1.REVIEW_TEXT