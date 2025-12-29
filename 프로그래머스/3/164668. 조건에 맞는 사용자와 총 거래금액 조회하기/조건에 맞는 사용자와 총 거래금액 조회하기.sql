-- 코드를 입력하세요
SELECT user_id, nickname, sum(price) as total_sales
FROM USED_GOODS_BOARD as ugb
inner join used_goods_user as ugu on ugb.writer_id = ugu.user_id
where ugb.status like '%DONE%'
group by ugu.user_id
having sum(price) >= 700000 
order by total_sales