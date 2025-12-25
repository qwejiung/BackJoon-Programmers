select i.ANIMAL_ID, i.NAME
from ANIMAL_INS i
where exists (select 1
             from ANIMAL_OUTS o
             where i.ANIMAL_ID = o.ANIMAL_ID and i.DATETIME > o.DATETIME)
order by i.DATETIME