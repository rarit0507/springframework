create table sample (
    num int,
    title varchar2(50),
    res TIMESTAMP default sysdate);
    
select * from sample;

insert into sample values (1,'����1',default);
insert into sample values (2,'����2',default);
insert into sample values (3,'����3',default);

commit;