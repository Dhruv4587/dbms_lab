create database university_profile;

use university_profile;

CREATE TABLE student(name varchar(20),rollno integer UNIQUE,age integer,math integer,sci integer,eng integer,social integer,sports integer);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("dwayne",33,21,98,94,91,96,55);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("john",58,18,70,87,77,98,67);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("dave",27,22,54,68,98,96,77);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("randy",56,19,69,75,65,67,98);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("kane",11,22,86,95,52,57,73);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("tom",50,21,76,84,62,74,81);

create table campus(name varchar(20),cid integer,loc varchar(20),cap integer,law boolean,engg boolean,buss boolean);

insert into campus(name,cid,loc,cap,law,engg,buss) values("mec",101,"hyd",1000,1,1,1);

insert into campus(name,cid,loc,cap,law,engg,buss) values("muc",104,"mad",2000,0,1,1);

insert into campus(name,cid,loc,cap,law,engg,buss) values("mgt",107,"bom",1500,1,0,0);

/*Query 1*/ select cid from campus where law=1;

/*Query 2*/ select rollno,age,math,sci,sports from student where name="dave";

/*Query 3*/ select name,rollno from student where math>80 OR sci>80;

/*Query 4*/ select social from student;

/*Query 5*/ select COUNT(eng) from student where eng<70;

/*Query 6*/ select name,rollno FROM marks
order by (sci + math)   desc limit 1;

/*Query 7*/ select loc from student where engg=0;

/*Query 8*/ select a.sum1/b.sum2 as final from(
select sum(cap) as sum1 from campus where engg= 1)a join (select sum(cap) as sum2 from campus where engg=0)b;

/*Query 9*/ select name from student where math>70 AND sci>70 AND eng>70 AND social>70 AND sports>70;

/*Query 10*/ select count(rollno) From student where rollno<=20;
