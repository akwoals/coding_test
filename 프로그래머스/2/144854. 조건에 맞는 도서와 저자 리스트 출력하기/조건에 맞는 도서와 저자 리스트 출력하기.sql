-- 코드를 입력하세요
SELECT BOOK_ID, AUTHOR_NAME, date_format(PUBLISHED_DATE, '%Y-%m-%d')
from book as b
join author as a on b.AUTHOR_ID = a.AUTHOR_ID
where category like '%경제%'
order by PUBLISHED_DATE