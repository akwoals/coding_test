-- 코드를 작성해주세요
select count(fi.fish_type) as FISH_COUNT, fish_name AS FISH_NAME
from fish_info as fi
join fish_name_info as fni on fi.fish_type = fni.fish_type
group by fi.fish_type, fni.fish_name
order by FISH_COUNT desc