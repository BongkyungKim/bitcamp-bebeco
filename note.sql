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

CREATE DATABASE testdb CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL ON testdb.* TO 'study'@'localhost';

insert into test2
values(3, 3, 3, 3);

insert into test2
values(4, 4, 4, 4);

insert into test2
values(5, 5, 5, 5);

insert into test2
values(6, 6, 6, 6);

insert into test2
values(7, 7, 7, 7);

insert into test3
values(5, 5, 5, 5);

insert into test3
values(6, 6, 6, 6);

insert into test3
values(7, 7, 7, 7);

insert into test3
values(8, 8, 8, 8);

insert into test3
values(9, 9, 9, 9);

delete from test3 where no = 8;

select * from test1 t1
join test2 t2 on t1.no = t2.no
join test3 t3 on t2.no = t3.no;

create table test4 (
  no int,
  t4 int,
  t44 int,
  t444 int
);

insert into test4
values(13, 13, 13, 13);

insert into test4
values(14, 14, 14, 14);

insert into test4
values(15, 15, 15, 15);

insert into test4
values(16, 16, 16, 16);

select * from test1 t1
join test2 t2 on t1.no = t2.no
join test3 t3 on t2.no = t3.no
left outer join test4 t4 on t1.no = t4.no;

select * from test1 t1
join test2 t2 on t1.no = t2.no
join test3 t3 on t2.no = t3.no
left outer join test4 t4 on t2.no = t4.no
where t4.no is null;

select * from test1 t1
join test2 t2 on t1.no = t2.no
join test3 t3 on t2.no = t3.no
right outer join test4 t4 on t1.no = t4.no;

select * from test1 t1
join test2 t2 on t1.no = t2.no
join test3 t3 on t2.no = t3.no
right outer join test4 t4 on t1.no = t4.no
where t1.no is null;

insert into test4
values(16, 16, 16, 16);

insert into test1
values(16, 16, 16, 16);

insert into test4
values(3, 3, 3, 3);



delete from party where p_no = 2;
delete from party where p_no = 3;
delete from party where p_no = 4;
delete from party where p_no = 5;
delete from party where p_no = 6;
delete from party where p_no = 7;
delete from party where p_no = 8;
delete from party where p_no = 9;
delete from party where p_no = 10;
delete from party where p_no = 2;




select * from test1 t1
join test2 t2 on t1.no = t2.no
join test3 t3 on t2.no = t3.no;

select * from member m
join feed f on m.mno = f.mno
join feed_like l on f.mno = l.mno;

select * from member m
join ticket t on m.mno = t.mno;


select * from member m
join ticket t on m.mno = t.mno
join review r on t.t_no = r.t_no;


select * from member m
                  join ticket t on m.mno = t.mno
                  join review r on t.t_no = r.t_no
                  join rv_img ri on r.t_no = ri.t_no;


------------- 메모 --------------

// 0. csv파일 insert
load data local infile '/Users/bebeco/bitcamp-project/DB/파일명.csv' into table [DB명].[테이블명] fields terminated by ',';
load data local infile '/Users/bebeco/bitcamp-project/DB/sample2.csv' into table got.party fields terminated by ',';

// 1. member
insert into member (mno, id, pwd, grade, name, nick, in_date, postnum, mainaddr, out_state) 
values (1, 'user1@test.com', '1111', 0, '비트캠프1', 'bitbit', '2022-10-05', '30100', '세종시', 0);

insert into member (mno, id, pwd, grade, name, nick, in_date, postnum, mainaddr, out_state) 
values (2, 'user2@test.com', '1111', 0, '비트캠프2', 'bitbit', '2022-10-05', '30100', '세종시', 0);

insert into member (mno, id, pwd, grade, name, nick, in_date, postnum, mainaddr, out_state) 
values (3, 'user3@test.com', '1111', 0, '비트캠프3', 'bitbit', '2022-10-05', '30100', '세종시', 0);

insert into member (mno, id, pwd, grade, name, nick, in_date, postnum, mainaddr, out_state) 
values (4, 'user4@test.com', '1111', 0, '비트캠프4', 'bitbit', '2022-10-05', '30100', '세종시', 0);

insert into member (mno, id, pwd, grade, name, nick, in_date, postnum, mainaddr, out_state) 
values (5, 'user5@test.com', '1111', 0, '비트캠프5', 'bitbit', '2022-10-05', '30100', '세종시', 0);