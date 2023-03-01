create table Department(
dep_id INTEGER primary key,
dep_name VARCHAR(20),
dep_location VARCHAR(15)
);

create table salary_grade(
grade INTEGER,
min_salary INTEGER,
max_salary INTEGER
);

create table Employees(
emp_id INTEGER,
emp_name VARCHAR(15),
job_name VARCHAR(10),
manager_id INTEGER,
hire_date DATE,
salary DECIMAL(10, 2),
commission DECIMAL(7,2),
dep_id INTEGER foreign key REFERENCES Department(dep_id)
);



INSERT INTO Department VALUES (1001, 'FINANCE', 'SYDNEY');
INSERT INTO Department VALUES (2001, 'AUDIT', 'MELBOURNE');
INSERT INTO Department VALUES (3001, 'MARKETING', 'PERTH');
INSERT INTO Department VALUES (4001, 'PRODUCTION', 'BRISBANE')






INSERT INTO salary_grade VALUES (1, 800, 1300);
INSERT INTO salary_grade VALUES (2, 1301, 1500);
INSERT INTO salary_grade VALUES (3,1501, 2100);
INSERT INTO salary_grade VALUES (4, 2101, 3100);
INSERT INTO salary_grade VALUES (5, 3101, 9999)





INSERT INTO Employees(emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES
(68319, 'KAYLING', 'PRESIDENT', NULL, '1991-11-18', 6000.00, NULL, 1001),
(66928, 'BLAZE', 'MANAGER', 68319,  '1991-05-01', 2750.00, NULL, 3001),
(67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, NULL, 1001),
(65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00, NULL, 2001),
(67858, 'SCARLET', 'ANALYST', 65646, '1997-04-19', 3100.00, NULL, 2001),
(69062, 'FRANK', 'ANALYST', 65646, '1991-12-03', 3100.00, NULL, 2001),
(63679, 'SANDRINE', 'CLERK', 69062, '1990-12-18', 900.00, NULL, 2001),
(64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 1700.00, 400.00, 3001),
(65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 1350.00, 600.00, 3001),
(66564, 'MADDEN', 'SALESMAN', 66928, '1991-09-28', 1350.00, 1500.00, 3001),
(68454, 'TUCKER', 'SALESMAN', 66928, '1991-09-08', 1600, 0.00, 3001),
(68736, 'ADNRES', 'CLERK', 67858, '1997-05-23', 1200.00, NULL, 2001),
(69000, 'JULIUS', 'CLERK', 66928, '1991-12-03', 1050.00, NULL, 3001), 
(69324, 'MARKER', 'CLERK', 67832, '1992-01-23', 1400.00, NULL, 1001)


SELECT * FROM Employees

SELECT salary FROM Employees

SELECT DISTINCT job_name FROM Employees

SELECT emp_name, salary*1.15 AS new_salary	FROM Employees

SELECT CONCAT(emp_name, ' & ', job_name) AS "Employee & Job" FROM Employees

SELECT  emp_name, salary, to_char(hire_date, 'MONTH DD, YYYY') FROM Employees

SELECT COUNT(salary) AS NO FROM Employees
WHERE salary> 2200
 
SELECT DISTINCT job_name, dep_id FROM Employees

SELECT * FROM Employees
WHERE dep_id <> 2001

SELECT * FROM Employees
WHERE hire_date <'1-1-1991'

SELECT	AVG(salary) AS average_salary FROM Employees
WHERE job_name='ANALYST'

SELECT * FROM Employees
WHERE emp_name LIKE 'B%' OR emp_name LIKE '%E'

SELECT *FROM Employees, Department
WHERE dep_name LIKE 'B%' OR dep_name LIKE '%E'

SELECT *FROM Employees, Department
WHERE dep_location LIKE 'F%' OR dep_location LIKE '%N'

SELECT * FROM Employees, Department
WHERE commission> salary

SELECT emp_name	FROM Employees
WHERE salary*1.25 > 3000

SELECT * FROM Employees
WHERE month(hire_date)='1'

SELECT  CONCAT(emp_name,' works for ', dep_name) AS 'Employees and their depaetment' FROM Employees, Department

SELECT * FROM Employees
WHERE job_name='CLERK'

SELECT * FROM Employees
WHERE hire_date <'1-1-1995'

SELECT * FROM Employees
WHERE salary< 3500

SELECT emp_name, job_name, salary FROM Employees
WHERE job_name='ANALYST'


SELECT * FROM Employees
WHERE hire_date >='1-1-1991' AND hire_date <'1-1-1992'


SELECT * FROM Employees
WHERE hire_date >='1992-1-1'

SELECT emp_id, emp_name, hire_date, salary FROM Employees
WHERE hire_date < '1-4-1991'

SELECT DISTINCT emp_name, job_name FROM Employees 
WHERE manager_id IS NULL



SELECT * FROM Employees
WHERE hire_date = '1991-05-01'


SELECT DISTINCT emp_id, emp_name, salary, DATEDIFF(YEAR,hire_date, '2023-1-1')  AS Experince FROM Employees
WHERE manager_id= 68319  


SELECT DISTINCT emp_id, emp_name, salary, DATEDIFF(YEAR,hire_date, '2023-1-1')  AS Experince FROM Employees
WHERE salary/30 > 100


SELECT DISTINCT * FROM Employees
WHERE  salary%2 <> 0;


SELECT * FROM employees
WHERE salary>=100 AND salary<1000



SELECT DISTINCT * FROM Employees
WHERE month(hire_date)=4


SELECT DISTINCT * FROM Employees
WHERE day(hire_date)<19


SELECT *, DATEDIFF(month,hire_date, '2023-1-1')  AS Experince FROM Employees
WHERE DATEDIFF(month,hire_date, '2023-1-1')>10 AND job_name='SALESMAN'



SELECT DISTINCT * FROM Employees
WHERE dep_id=3001 or dep_id=1001 AND YEAR(hire_date)= 1991


SELECT DISTINCT * FROM Employees
WHERE dep_id=1001 or dep_id=2001


SELECT * FROM Employees
WHERE job_name='CLERK' and dep_id=2001


SELECT DISTINCT * FROM Employees
WHERE job_name='CLERK' or job_name='MANAGER'


SELECT DISTINCT * FROM Employees
WHERE month(hire_date)<> 2

SELECT DISTINCT * FROM Employees
WHERE month(hire_date)=6 AND YEAR(hire_date)=1991


SELECT DISTINCT * FROM Employees
WHERE salary*12<=24000 AND salary<=50000

SELECT DISTINCT * FROM Employees
WHERE DAY(hire_date)=1 AND month(hire_date)=5 or DAY(hire_date)=20 AND month(hire_date)=2 or DAY(hire_date)=3 AND month(hire_date)=12 and YEAR(hire_date)=1991




SELECT * FROM Employees
WHERE manager_id=63679 OR manager_id= 68319 OR manager_id=66564 OR manager_id=69000




SELECT  * FROM Employees
WHERE YEAR(hire_date)>=1990 AND YEAR(hire_date)<2000



SELECT manager_id FROM Employees
WHERE dep_id=1001 OR dep_id=2001


SELECT DISTINCT * FROM Employees
WHERE month(hire_date)= 2 AND salary>1000 AND salary<=2000


SELECT * FROM Employees
WHERE YEAR(hire_date)<> 1991



SELECT DISTINCT * FROM Employees Department


SELECT  emp_name, job_name, salary*12 AS Annual_Salary, dep_id FROM Employees
WHERE salary*12>=60000 AND job_name <>'ANALYST'


SELECT e.emp_id, e.dep_id, e.salary, e.commission FROM Employees e , Department 
WHERE salary>=2000 AND salary<=5000 AND dep_location='PERTH'


SELECT DISTINCT emp_name, grade FROM Employees, salary_grade
WHERE dep_id= 1001 OR dep_id= 3001 AND grade<>4 AND hire_date<'1992-12-31'



SELECT emp_name, salary FROM Employees,salary_grade
WHERE salary= max_salary AND emp_name='FRANK'



SELECT emp_id, emp_name, job_name, manager_id, hire_date, salary, dep_id FROM Employees
WHERE job_name='MANAGER ' OR job_name='ANALYST ' AND salary>=2000 AND salary<=5000




SELECT  e.emp_id, e.emp_name, e.dep_id, e.salary, dep_location FROM Employees e, Department 
WHERE  YEAR(hire_date)= 1991 AND  dep_location='SYDNEY' OR dep_location='MELBOURNE' AND salary>=2000 AND salary<=5000




SELECT  DISTINCT e.emp_id, e.emp_name, e.salary, e.dep_id, d.dep_name, d.dep_location, c.grade FROM Employees e, Department d, salary_grade c
WHERE d.dep_name='MARKETING' AND d.dep_location IN ('MELBOURNE','PERTH') AND c.grade IN (3,4,5) AND DATEDIFF(month, hire_date, '2023-1-1')>=25



SELECT * FROM Employees 
WHERE manager_id IS NULL



SELECT * FROM Employees, salary_grade
WHERE grade=4



SELECT * FROM Employees 
WHERE YEAR(hire_date)> 1991 AND emp_name<>'MARKER' OR emp_name<>'ADELYN' AND dep_id= 2001 OR dep_id=4001





SELECT * FROM Department

SELECT * FROM salary_grade
