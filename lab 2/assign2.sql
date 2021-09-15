INSERT INTO student VALUE
('dwayne', 33, '2000-01-09', 2019, 'M', 'R', 98, 94, 91, 96, 55),
('john', 58, '2002-03-21', 2019, 'M', 'W', 70, 87, 77, 98, 67),
('dave', 27, '1999-09-11', 2018, 'M', 'A', 54, 68, 98, 98, 77),
('randy', 56, '2001-04-28', 2019, 'M', 'R', 69, 75, 65, 67, 98),
('kane', 11, '1999-02-13', 2018, 'M', 'G', 86, 95, 52, 57, 73),
('tom', 50, '2000-06-19', 2018, 'F', 'W', 76, 84, 62, 74, 81),
('carol', 7, '2000-06-19', 2018, 'F', 'W', 78, 99, 45, 56, 88),
('wanda', 21, '2001-08-10', 2019, 'F', 'R', 42, 73, 59, 63, 65),
('natasha', 52, '2001-06-19', 2019, 'F', 'A', 83, 86, 89, 91, 99),
('gamora', 34, '2001-06-19', 2018, 'F', 'G', 84, 93, 79, 94, 85),
('jean', 46, '2000-06-19', 2019, 'F', 'G', 98, 97, 84, 87, 72);

INSERT INTO campus VALUE
('mec', 101, 'hyd', 500043, 1000, 1, 1, 1),
('muc', 104, 'mad', 600012, 2000, 0, 1, 1),
('mgt', 107, 'bom', 400076, 1500, 1, 0, 1),
('mdc', 106, 'pun', 411021, 1700, 0, 1, 1),
('mdd', 109, 'del', 110001, 1400, 1, 1, 0),
('mvc', 110, 'vel', 631001, 1400, 1, 1, 1),
('mbd', 113, 'bgl', 560002, 800, 0, 1, 1);

SELECT*FROM student;

SELECT*FROM campus;

DROP TABLE student;

DROP TABLE campus;

/*1 pass for vax*/
SELECT name, TRUNCATE(DATEDIFF(CURDATE(), dob)/365.25, 0) AS Age FROM student
WHERE DATEDIFF(CURDATE(), dob)/365.25 > 18
ORDER BY Age;

/*2 sports 20 age*/
SELECT name, gender, TRUNCATE(DATEDIFF(CURDATE(), dob)/365.25, 0) AS Age FROM student
WHERE DATEDIFF(CURDATE(), dob)/365.25 > 20
ORDER BY gender;

/*3 Math > Avg Math*/
SELECT rollno, name, math FROM student
WHERE math > (SELECT AVG(math + sci + eng + social + sports)/5 FROM student)
ORDER BY math DESC;

/*4 University expansion*/
SELECT SUM(IF(pincode > 500000 AND pincode < 699999, cap, 0))/SUM(IF(pincode > 300000 AND pincode < 499999, cap, 0)) AS ratio_south_by_west FROM campus;

/*5 second highest place*/
SELECT rollno, name FROM 
( SELECT * FROM student ORDER BY (math + sci + eng + social + sports) DESC LIMIT 2) temp
ORDER BY (math + sci + eng + social + sports) LIMIT 1;
