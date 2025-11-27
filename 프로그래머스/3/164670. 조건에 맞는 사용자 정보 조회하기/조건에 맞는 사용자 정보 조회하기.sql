
SELECT ugu.user_id, nickname, concat(city, " ", street_address1 , " ",  street_address2) as 전체주소,
       concat(substr(tlno,1,3),'-',substr(tlno,4,4),'-',substr(tlno,8,4)) as 전화번호
from used_goods_board as ugb
inner join used_goods_user as ugu on ugb.writer_id = ugu.user_id
group by ugu.user_id
having count(*) >= 3
order by user_id desc
