select
  la.lano,
  la.lno,
  la.mno,
  la.rdt
from lect_appl la;

select
  la.lano,
  la.lno,
  la.mno,
  date_format(la.rdt, '%m/%d/%Y') reg_dt
from lect_appl la;

select
  la.lano,
  (select titl
    from lect
    where lno = la.lno) as lect_title,
    la.mno,
    la.rdt
from lect_appl la;

select
  la.lano,
  (select titl
    from lect
    where lno = la.lno) as lect_title,
  (select name
    from memb
    where mno = la.mno) as stud_name,
  la.rdt
from lect_appl la;

select
  l.lno,
  l.titl,
  l.rno,
  l.mno
from lect l;  

select
  l.lno,
  l.titl,
  (select name
    from room
    where rno = l.rno) as room_name,
  (select name
    from memb
    where mno = l.mno) as manager_name,
  (select posi
    from mgr
    where mno = l.mno) as manager_posi
from lect l;    

select
  la.lano,
  (select name
    from memb
    where mno = la.mno) as stud_name,
    lec.titl,
    lec.room_name,
    lec.manager_name,
    lec.manager_posi
from lect_appl la
    join     (select
                l.lno,
                l.titl,
                (select name 
                  from room
                  where rno = l.rno) as room_name,
                (select name
                  from memb
                  where mno = l.mno) as manager_name,
                (select posi
                  from mgr
                  where mno = l.mno) as manager_posi
              from lect l) as lec on la.lno = lec.lno; 
  

select
  l.lno,
  l.titl,
  (select name
    from room
    where rno = l.rno) as room_name,
  (select name
    from memb
    where mno = l.mno) as manager_name,
  (select posi
    from mgr
    where mno = l.mno) as manager_posi
  from lect l;
