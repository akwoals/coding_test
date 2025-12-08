-- 코드를 입력하세요
with ci as (SELECT car_id,
       case when
                '2022-10-16' between start_date and end_date then 1
            else 0 end as num
from car_rental_company_rental_history
order by car_id desc)

select car_id, case when
                       sum(num) >0 then "대여중"
               else "대여 가능" end as avaliablity
from ci
group by car_id
order by car_id desc
