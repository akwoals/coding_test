-- 코드를 입력하세요
with tim as(
SELECT *, timestampdiff(day,start_date, end_date)  as timediff
from car_rental_company_rental_history
order by car_id
    )
select car_id, round(avg(timediff)+1 , 1) as AVERAGE_DURATION
from tim
group by car_id
having AVERAGE_DURATION >=7
order by AVERAGE_DURATION desc , car_id desc