


CREATE TABLE Department(
dep_id   INTEGER primary key,
dep_name VARCHAR(20),
HOD      VARCHAR(20)
);




CREATE TABLE Student(
s_id INTEGER PRIMARY KEY,
sname VARCHAR(20),
smajor VARCHAR(20),
sgender VARCHAR(20),
sphone_no VARCHAR(20),
semail VARCHAR(50),
hire_date DATE,
GPA DECIMAL(4, 2),
);

ALTER TABLE Student
ALTER COLUMN hire_date DATE  ; 

CREATE TABLE Course(
cid	  INTEGER PRIMARY KEY,
cname	VARCHAR(20),
dep_id 	INTEGER FOREIGN key REFERENCES Department(dep_id),
);


CREATE TABLE Teacher(
tid      INTEGER PRIMARY KEY,
tname     VARCHAR(20),
tphone_no VARCHAR(20),
temail     VARCHAR(20),
tgender    VARCHAR(20),
tmajor    VARCHAR(20),
salary     DECIMAL(10, 2),
dep_id      INTEGER FOREIGN key REFERENCES Department(dep_id),
);




CREATE TABLE Student_Course(

s_id INTEGER FOREIGN key REFERENCES Student(s_id),
cid INTEGER FOREIGN key REFERENCES Course(cid)
);



CREATE TABLE Teacher_Course(
tid INTEGER FOREIGN key REFERENCES Teacher(tid),
cid INTEGER FOREIGN key REFERENCES Course(cid)
);




INSERT INTO Department(dep_id,dep_name, HOD)
VALUES	
(1111,'Math', 'Said'),
(2222, 'Computer Scince', 'Mohammed'),
(3333, 'Physic', 'Ali'),
(4444, 'Chemstry', 'Awadh'),
(5555, 'Biology', 'Ibrahim')



INSERT INTO Course (cid, cname, dep_id)
VALUES
(1001, 'Math', 1111),
(2001, 'Calculse 1', 1111),
(3001, 'Statistics', 1111),
(4001, 'Calculse 2', 1111),
(1002, 'Intro. to Computer', 2222),
(2002, 'Python', 2222),
(3002, 'Java', 2222),
(4002, 'C++', 2222),
(5002, 'HTML', 2222),
(1003, 'Physic 1', 3333),
(2003, 'Physic 2', 3333),
(1004, 'Chemstry 1', 4444),
(2004, 'Chemstry 2', 4444),
(1005, 'Biology 1', 5555),
(2005, 'Biology 2', 5555);



INSERT INTO Teacher(tid, tname, tphone_no, temail, tgender, tmajor, salary, dep_id)
VALUES
(1234, 'Ali', '91111112', 'ali@gmail.com', 'Male', 'Math', 3000, 1111),
(1235, 'Mohammed', '91111113', 'Mohammed@gmail.com', 'Male', 'Computer Scince', 4144, 2222),
(1230, 'Ali', '91111114', 'ali@gmail.com', 'Male', 'Biology', 2544, 5555),
(1233, 'Mohammed', '91111115', 'mohammed@gmail.com', 'Male', 'Computer Scince', 2425, 2222),
(1200, 'Ali', '91111116', 'ali@gmail.com', 'Male', 'Biology', 1425, 5555),
(1201, 'Mohammed', '91111117', 'mohammed@gmail.com', 'Male', 'Computer Scince', 6352, 2222),
(1202, 'Ibrahim', '91111118', 'ibrahim@gmail.com', 'Male', 'Physic', 8745, 3333),
(1203, 'Bader', '91111119', 'bader@gmail.com', 'Male', 'Computer Scince', 2565, 2222),
(1204, 'Awadh', '91113333', 'awadh@gmail.com', 'Male', 'Biology', 1452, 5555),
(1205, 'Mohsin', '91111555', 'mohsin@gmail.com', 'Male', 'Chemstry', 8796, 4444),
(1206, 'Said', '91411222', 'said@gmail.com', 'Male', 'Physic', 2000, 3333),
(1207, 'Fatema', '91112210', 'fatema@gmail.com', 'Female', 'Physic', 2200, 3333),
(1208, 'Sara', '93311110', 'sara@gmail.com', 'Female', 'Chemstry', 1500, 4444),
(1209, 'Amal', '91112224', 'amal@gmail.com', 'Female', 'Biology', 1800, 5555),
(1210, 'Ahmed', '91114443', 'ahmed@gmail.com', 'Male', 'Chemstry', 1200, 5555),
(1211, 'Salim', '97789464', 'salim@gmail.com', 'Male', 'Physic', 2300, 3333),
(1212, 'Hassn', '98880111', 'hassn@gmail.com', 'Male', 'Biology', 1700, 5555),
(1213, 'Alaa', '91122310', 'alaa@gmail.com', 'Female', 'Chemstry', 1900, 4444),
(1214, 'Marya', '91112222', 'marya@gmail.com', 'Female', 'Physic', 2100, 4444);






INSERT INTO Student(s_id, sname, sphone_no, semail, sgender, smajor, hire_date, GPA)
VALUES
(2000, 'Mohammed', '91111112', 'mohammed@gmail.com', 'Male', 'Math', '2018-08-01', 3.50),
(2001, 'Ibrahim', '91111113', 'ibrahim@gmail.com', 'Male', 'Computer Scince', '2018-01-01', 3.30),
(2002, 'Ali', '91111114', 'ali@gmail.com', 'Male', 'Biology', '2018-08-06', 3.00),
(2003, 'Yahya', '91111115', 'yahya@gmail.com', 'Male', 'Computer Scince', '2018-09-01', 3.10),
(2004, 'Sultan', '91111116', 'sultan@gmail.com', 'Male', 'Biology', '2018-12-03', 2.90),
(2005, 'Mohammed', '91111117', 'mohammed@gmail.com', 'Male', 'Computer Scince', '2019-08-01', 3.10),
(2006, 'Said', '91111118', 'said@gmail.com', 'Male', 'Physic', '2019-02-01', 3.20),
(2007, 'Salim', '91111119', 'salim@gmail.com', 'Male', 'Computer Scince', '2019-08-12', 3.40),
(2008, 'Awadh', '91113333', 'awadh@gmail.com', 'Male', 'Biology', '2019-11-11', 2.80),
(2009, 'Mohsin', '91111555', 'mohsin@gmail.com', 'Male', 'Chemstry', '2019-12-01', 2.60),
(2010, 'Ibrahim', '91411222', 'ibrahim@gmail.com', 'Male', 'Physic', '2020-01-01', 2.90),
(2011, 'Fatema', '91112210', 'fatema@gmail.com', 'Female', 'Physic', '2020-08-01', 3.00),
(2012, 'Marya', '93311110', 'marya@gmail.com', 'Female', 'Chemstry', '2020-06-06', 4.00),
(2013, 'Amal', '91112224', 'amal@gmail.com', 'Female', 'Biology', '2021-01-03', 3.20),
(2014, 'Ahmed', '91114443', 'ahmed@gmail.com', 'Male', 'Chemstry', '2021-12-12', 3.80),
(2015, 'Bader', '97789464','bader@gmail.com', 'Male', 'Physic', '2022-01-11', 3.90),
(2016, 'Hassn', '98880111', 'hassn@gmail.com', 'Male', 'Biology', '2022-08-08', 2.70),
(2017, 'Alaa', '91122310', 'alaa@gmail.com', 'Female', 'Chemstry', '2022-11-03', 3.60),
(2018, 'Sara', '91112222', 'sara@gmail.com', 'Female', 'Physic', '2023-01-01', 4.00)





SELECT * FROM Department

SELECT * FROM Course

SELECT * FROM Teacher

SELECT * FROM Student

