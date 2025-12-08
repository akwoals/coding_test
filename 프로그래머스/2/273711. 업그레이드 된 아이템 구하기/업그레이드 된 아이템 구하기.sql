-- 코드를 작성해주세요
with rarey as (
select ii.*,
       PARENT_ITEM_ID
from item_info as ii
left join item_tree as it on ii.item_id = it.item_id
)
select t2.item_id, t2.item_name, t2.rarity
from rarey as t1
join rarey as t2
on t1.item_id = t2.PARENT_ITEM_ID
where t1.rarity like '%RARE%'
order by t2.item_id desc