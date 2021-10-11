/*--------------------1------------------*/
create table marks_sem1 as select * from student;

alter table marks_sem1 
drop column name;

alter table marks_sem1
drop column yjoin;

alter table marks_sem1
drop column gender; 

alter table marks_sem1
drop column dob;

alter table marks_sem1
drop column team;

alter table marks_sem1
add primary key(rollno);

/*-------------------2-----------------*/
create table faculty(name varchar(20), fid char(4), subject varchar(20));
insert into faculty(name, fid, subject) values('kakashi', 4003, 'math'); 
insert into faculty(name, fid, subject) values('guy', 5002, 'sports'); 
insert into faculty(name, fid, subject) values('kurenai', 5038, 'eng');

alter table faculty
add primary key(fid);

/*-----------------3---------------*/
create table sem1(subj_id char(4), subject varchar(20), fid char(4), cap integer, campus integer);
insert into sem1(subj_id,subject,fid,cap,campus) values(101, 'math', 4003, 60, 101);
insert into sem1(subj_id,subject,fid,cap,campus) values(102, 'sports', 5002, 60, 101);
insert into sem1(subj_id,subject,fid,cap,campus) values(105, 'eng', 5038, 60, 104);

alter table sem1
add primary key(subj_id);

alter table sem1
add key(fid);

alter table sem1
add key(campus);


/*---------------4------------*/
alter table campus
add primary key(cid);

/*--------------5--------------*/
alter table student
add column cid integer;

update student
set cid = 109
where name = 'dwayne';

update student
set cid = 101
where name = 'john';

update student
set cid = 110
where name = 'dave';

update student
set cid = 104
where name = 'randy';

update student
set cid = 104
where name = 'kane';

update student
set cid = 101
where name = 'tom';

update student
set cid = 113
where name = 'carol';

update student
set cid = 107
where name = 'wanda';

update student
set cid = 109
where name = 'natasha';

update student
set cid = 109
where name = 'gamora';

update student
set cid = 110
where name = 'jean';

alter table student
drop column math;

alter table student
drop column sci;

alter table student
drop column eng;

alter table student
drop column social;

alter table student
drop column sports;

alter table student
add foreign key(cid) references campus(cid);

alter table student
add foreign key (rollno) references marks_sem1(rollno);

alter table student
alter dob set default '2001-01-01';

alter table student
alter yjoin set default 2019;

alter table student
alter gender set default 'M';

alter table student
alter team set default 'R';

describe student;
