# SELECT 
# from (select f.flavor, sum(f.total_order)
#       from first_half f
#       group by f.flavor ), (select j.flavor, sum(j.total_order)
#                             from july j
#                             group by j.flavor)
# where f.flavor = j.flavor
# group by f.flavor

with f as (select f.flavor, sum(f.total_order) as forder
              from first_half f
              group by f.flavor),
    j as (select j.flavor, sum(j.total_order) as jorder
              from july j
              group by j.flavor)
select f.flavor
from f, j
where f.flavor = j.flavor
group by f.flavor
order by (forder+jorder) desc
limit 3;


