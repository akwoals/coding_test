-- 코드를 입력하세요
with best as(
    SELECT ugb.*,
    rank() over (order by views desc) as rm,
    ugf.FILE_ID, ugf.FILE_NAME, ugf.FILE_EXT
    from used_goods_board as ugb
    join used_goods_file as ugf on ugb.board_id = ugf.board_id
    )

select concat('/home/grep/src/',board_id,'/',file_id,file_name,file_ext) as file_path
from best
where rm = 1
order by file_id desc