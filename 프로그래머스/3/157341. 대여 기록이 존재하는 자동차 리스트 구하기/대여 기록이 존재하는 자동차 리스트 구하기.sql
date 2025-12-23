-- 코드를 입력하세요
SELECT crc.car_id
from car_rental_company_car as crc
inner join car_rental_company_rental_history as crcrh on crc.car_id = crcrh.car_id
where month(start_date) like '%10%' and car_type like'%세단%'
group by crc.car_id
order by crc.car_id desc