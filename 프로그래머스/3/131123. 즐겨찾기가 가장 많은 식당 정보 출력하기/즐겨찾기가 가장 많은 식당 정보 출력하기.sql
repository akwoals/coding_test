-- 코드를 입력하세요
with rs as
(SELECT rank() over(partition by food_type order by favorites desc) as rm,food_type, REST_ID, REST_NAME, FAVORITES
from rest_info)

select food_type, REST_ID, REST_NAME, FAVORITES
from rs
where rm=1
order by food_type desc