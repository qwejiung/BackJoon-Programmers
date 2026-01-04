select i.animal_id, i.animal_type, i.name
from ANIMAL_INS i join ANIMAL_OUTS o on i.animal_id = o.animal_id
where i.SEX_UPON_INTAKE != o.SEX_UPON_OUTCOME
order by i.animal_id