create table tbl_std_202105(
std_no char(5) not null primary key,
std_name varchar2(10) not null,
std_birth varchar2(8),
std_address varchar2(50)
)
insert into tbl_std_202105 values('30401', '고길동', '19690501','서울시 도봉구');
insert into tbl_std_202105 values('30402', '둘리', '19840404','서울시 은평구');
insert into tbl_std_202105 values('30403', '도우너', '19880504','서울시 양천구');
insert into tbl_std_202105 values('30404', '마이콜', '19751107','서울시 강동구');
drop table tbl_att_202105
create table tbl_att_202105(
att_ymd varchar2(8) not null,
att_std_no char(5) not null,
att_yn char(1)
)
insert into tbl_att_202105 values('20210511','30401','Y');
insert into tbl_att_202105 values('20210511','30402','N');
insert into tbl_att_202105 values('20210511','30403','Y');
insert into tbl_att_202105 values('20210511','30404','Y');

select * from tbl_att_202105

select a.std_no, a.std_name,
substr(a.std_birth, 1,4)||'-'||substr(a.std_birth, 5,2)||'-'||substr(a.std_birth, 7,2),
a.std_address,
decode(b.att_yn, 'Y', '출석', 'N', '결석')
from tbl_std_202105 a , tbl_att_202105 b
where a.std_no = b.att_std_no(+)
order by a.std_no;


select * from tbl_std_202105 s, left outer join tbl_att_202105 a on a.att_std_no = s.std_no 

select a.std_no, a.std_name, to_char(to_date(std_birth),'yyyy-mm-dd'), a.std_address, decode(att_yn, 'Y', '출석', 'N', '결석') from tbl_std_202105 a left outer join tbl_att_202105 on a.std_no = att_std_no order by std_no;


commit;




select a.std_no, a.std_name, substr(a.std_birth, 1,4)||'-'||substr(a.std_birth, 5,2)||'-'||substr(a.std_birth, 7,2), a.std_address, b.att_yn from tbl_std_202105 a , tbl_att_202105 b where a.std_no = b.att_std_no(+) order by a.std_no