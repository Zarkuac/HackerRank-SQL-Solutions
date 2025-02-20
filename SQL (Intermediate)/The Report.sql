select case when ss.grade>=8 then name
            else null end,
            ss.grade, ss.marks from (select name,
(select grade
from grades
where marks between min_mark and max_mark) grade, marks
from students) ss
order by ss.grade desc, ss.name
