select d.id, d.email, d.first_name, d.last_name
from DEVELOPERS d
where exists (select 1
              from SKILLCODES s
              where s.category = 'Front End' and d.skill_code & s.code)
order by d.id