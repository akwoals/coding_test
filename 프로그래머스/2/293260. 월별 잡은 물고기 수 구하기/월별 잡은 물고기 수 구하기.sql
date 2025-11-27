-- 코드를 작성해주세요
select count(month(time))as FISH_COUNT,month(time) as MONTH
from fish_info
where time is not null
group by month(time)
order by month(time)