-- 코드를 입력하세요
with times as(
       SELECT 
       ao.animal_id,
       ao.name,
       timestampdiff(second, ai.datetime, ao.datetime) as during_times
FROM ANIMAL_INS as ai
JOIN ANIMAL_OUTS as ao on ai.animal_id = ao.animal_id
where ao.name is not null
order by during_times desc)

select animal_id, name
from times
limit 2