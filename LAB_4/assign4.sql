/*1*/
select name, rollno from Student where team = 'R' union select name, rollno from Student where gender = 'F';

/*2*/
select team, count(name) as Count from Student group by team;

/*3*/
select team, avg(math) from Student where gender = 'M' group by team order by avg(math);

/*5*/
select team, avg(sci) from Student group by team order by avg(sci) desc limit 2;
