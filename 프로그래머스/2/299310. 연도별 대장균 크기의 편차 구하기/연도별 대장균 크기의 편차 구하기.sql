-- 코드를 작성해주세요
with max_size as(
    select year(DIFFERENTIATION_DATE) as year, 
      max(size_of_colony) over (PARTITION BY year(DIFFERENTIATION_DATE)) as year_max_size,
      id
from ecoli_data
)

select ms.year,
       (ms.year_max_size - ed.SIZE_OF_COLONY) as year_dev,
       ms.id
from ecoli_data as ed
left join max_size as ms on ed.id = ms.id
order by ms.year, year_dev