-- 코드를 작성해주세요
with score_sum as ( 
select emp_no,
    sum(score) as SCORE
from HR_GRADE
group by emp_no
)

select hg.SCORE, he.emp_no,emp_name, position, email
from HR_EMPLOYEES as he
left join score_sum as hg on he.emp_no = hg.emp_no 
order by score desc
limit 1