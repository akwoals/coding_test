-- 코드를 작성해주세요
select ROUTE,
       concat(round(sum(d_between_dist),1),'km') as TOTAL_DISTANCE ,
       concat(round(avg(d_between_dist),2),"km") AS AVERAGE_DISTANCE
from subway_distance
group by route
order by round(sum(d_between_dist),1) desc