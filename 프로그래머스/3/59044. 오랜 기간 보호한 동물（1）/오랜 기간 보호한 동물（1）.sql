select i.name, i.datetime
from ANIMAL_INS i
where not exists (select 1
                 from ANIMAL_OUTS o
                 where i.animal_id = o.animal_id)
order by i.datetime
limit 3
