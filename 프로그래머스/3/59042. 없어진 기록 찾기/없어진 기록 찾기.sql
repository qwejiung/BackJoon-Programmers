select o.ANIMAL_ID, o.NAME
from ANIMAL_OUTS o
where NOT EXISTS (select 1
                  from ANIMAL_INS i 
                  where i.ANIMAL_ID = o.ANIMAL_ID)