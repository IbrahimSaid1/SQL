CREATE TABLE Salesman ( 
    salesman_id INT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    commission DECIMAL(4, 2) NOT NULL 
); 
  
INSERT INTO Salesman (salesman_id, name, city, commission) 
VALUES 
    (5001, 'James Hoog', 'New York', 0.15), 
    (5002, 'Nail Knite', 'Paris', 0.13), 
    (5005, 'Pit Alex', 'London', 0.11), 
    (5006, 'Mc Lyon', 'Paris', 0.14), 
    (5007, 'Paul Adam', 'Rome', 0.13), 
    (5003, 'Lauson Hen', 'San Jose', 0.12); 
 
 
 
 
 
 
 
 
 
 
CREATE TABLE Customer ( 
    customer_id INT PRIMARY KEY, 
    cust_name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    grade INT, 
    salesman_id INT, 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) 
VALUES 
    (3002, 'Nick Rimando', 'New York', 100, 5001), 
    (3007, 'Brad Davis', 'New York', 200, 5001), 
    (3005, 'Graham Zusi', 'California', 200, 5002), 
    (3008, 'Julian Green', 'London', 300, 5002), 
    (3004, 'Fabian Johnson', 'Paris', 300, 5006), 
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
    (3001, 'Brad Guzan', 'London', NULL, 5005); 
 
 
 
 
 
 
 
 
 
CREATE TABLE Orders ( 
    ord_no INT PRIMARY KEY, 
    purch_amt DECIMAL(8, 2) NOT NULL, 
    ord_date DATE NOT NULL, 
    customer_id INT, 
    salesman_id INT, 
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id), 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) 
VALUES 
    (70001, 150.5, '2012-10-05', 3005, 5002), 
    (70009, 270.65, '2012-09-10', 3001, 5005), 
    (70002, 65.26, '2012-10-05', 3002, 5001), 
    (70004, 110.5, '2012-08-17', 3009, 5003), 
    (70007, 948.5, '2012-09-10', 3005, 5002), 
    (70005, 2400.6, '2012-07-27', 3007, 5001), 
    (70008, 5760, '2012-09-10', 3002, 5001), 
    (70010, 1983.43, '2012-10-10', 3004, 5006), 
    (70003, 2480.4, '2012-10-10', 3009, 5003), 
    (70012, 250.45, '2012-06-27', 3008, 5002), 
    (70011, 75.29, '2012-08-17', 3003, 5007), 
    (70013, 3045.6, '2012-04-25', 3002, 5001); 
 
 
 
 
CREATE TABLE Company_mast ( 
    COM_ID INT PRIMARY KEY, 
    COM_NAME VARCHAR(30) NOT NULL 
); 
  
INSERT INTO Company_mast (COM_ID, COM_NAME) 
VALUES 
    (11, 'Samsung'), 
    (12, 'iBall'), 
    (13, 'Epsion'), 
    (14, 'Zebronics'), 
    (15, 'Asus'), 
    (16, 'Frontech'); 
 
 
create table item_mast ( 
PRO_ID int PRIMARY KEY, 
PRO_NAME varchar(50), 
PRO_PRICE float, 
PRO_COM int) 
  
 
 
 
 
 
 
insert into item_mast values  
(101,'Mother Board', 3200.00,15), 
(102, 'Key Board', 450.00, 16), 
(103, 'ZIP drive', 250.00,14), 
(104, 'Speaker' , 550.00,16), 
(105, 'Monitor' , 5000.00,11), 
(106, 'DVD drive', 900.00, 12), 
(107, 'CD drive', 800.00, 12), 
(108, 'Printer', 2600.00, 13), 
(109, 'Refill cartridge' , 350.00, 13), 
(110, ' Mouse', 250.00, 12); 
 



CREATE TABLE DEPARTMENT ( 
    DPT_CODE INT PRIMARY KEY, 
    DPT_NAME VARCHAR(20) NOT NULL, 
    DPT_ALLOTMENT FLOAT NOT NULL 
); 
  
 
 
 
INSERT INTO DEPARTMENT (DPT_CODE, DPT_NAME, DPT_ALLOTMENT) 
VALUES 
(57, 'IT', 65000), 
(63, 'Finance', 15000), 
(47, 'HR', 240000), 
(27, 'RD', 55000), 
(89, 'QC', 75000); 






 
 CREATE TABLE EMP_DETAILS ( 
    EMP_IDNO INT PRIMARY KEY, 
    EMP_FNAME VARCHAR(50) NOT NULL, 
    EMP_LNAME VARCHAR(50) NOT NULL, 
    EMP_DEPT INT NOT NULL 
); 
  
INSERT INTO EMP_DETAILS (EMP_IDNO, EMP_FNAME, EMP_LNAME, 
EMP_DEPT) 
VALUES  
(127323, 'Michale', 'Robbin', 57), 
(526689, 'Carlos', 'Snares', 63), 
(843795, 'Enric', 'Dosio', 57), 
(328717, 'Jhon', 'Snares', 63), 
(444527, 'Joseph', 'Dosni', 47), 
(659831, 'Zanifer', 'Emily', 47), 
(847674, 'Kuleswar', 'Sitaraman', 57), 
(748681, 'Henrey', 'Gabriel', 47), 
(555935, 'Alex', 'Manuel', 57), 
(539569, 'George', 'Mardy', 27), 
(733843, 'Mario', 'Saule', 63), 
(631548, 'Alan', 'Snappy', 27), 
(839139, 'Maria', 'Foster', 57); 







SELECT * FROM Salesman


SELECT name Salesman, cust_name, s.city FROM Salesman s JOIN Customer c
ON s.city= c.city




SELECT ord_no, purch_amt, cust_name, city FROM Customer c JOIN Orders o
ON c.customer_id= o.customer_id AND purch_amt BETWEEN 500 AND 2000





SELECT name Salesman, cust_name, s.city, commission FROM Salesman s JOIN Customer c
ON s.salesman_id= c.salesman_id




SELECT name Salesman, cust_name, c.city, commission FROM Salesman s JOIN Customer c
ON s.salesman_id= c.salesman_id AND commission> 0.12





SELECT name Salesman, cust_name, c.city, commission FROM Salesman s JOIN Customer c
ON s.city<> c.city AND commission> 0.12







SELECT ord_no, ord_date, purch_amt, cust_name, grade, name Salesman  FROM Orders o JOIN Customer c
ON o.customer_id= c.customer_id
JOIN Salesman s
ON o.salesman_id= s.salesman_id





SELECT *
FROM orders
NATURAL JOIN customer
NATURAL JOIN salesman






SELECT cust_name, C.city, grade, name, S.city  FROM Customer C JOIN Salesman S
ON C.salesman_id= S.salesman_id
ORDER BY customer_id









SELECT cust_name, C.city, grade, name, S.city  FROM Customer C JOIN Salesman S
ON C.salesman_id= S.salesman_id AND grade<300
ORDER BY customer_id





SELECT cust_name, C.city, ord_no, ord_date, purch_amt  FROM Customer C LEFT OUTER JOIN Orders O
ON C.customer_id= O.customer_id
ORDER BY ord_date







SELECT cust_name, C.city, ord_no, ord_date, purch_amt, name, commission FROM Customer C LEFT JOIN Orders O
ON C.customer_id= O.customer_id
LEFT JOIN Salesman S
ON C.salesman_id= S.salesman_id




SELECT name FROM Salesman S LEFT JOIN Customer C
ON S.salesman_id= C.salesman_id
ORDER BY C.salesman_id 





SELECT DISTINCT s.name FROM Salesman s
LEFT JOIN Customer c
ON s.salesman_id= c.salesman_id
LEFT JOIN Orders o
ON c.customer_id=o.customer_id
WHERE o.purch_amt >= 2000
AND grade IS NOT NULL;



SELECT cust_name, city, ord_no, ord_date, purch_amt FROM Orders O RIGHT JOIN Customer C
ON O.customer_id= C.customer_id







SELECT cust_name, city, ord_no, ord_date, purch_amt FROM Orders O RIGHT JOIN Customer C
ON O.customer_id= C.customer_id 
WHERE grade IS NOT NULL;





SELECT * FROM Salesman CROSS JOIN Customer




SELECT name, cust_name FROM Salesman S CROSS JOIN Customer
WHERE S.city IS NOT NULL




SELECT name, cust_name FROM Salesman S CROSS JOIN Customer C
WHERE S.city <> C.city






SELECT * FROM Company_mast JOIN item_mast
ON PRO_COM= COM_ID




SELECT PRO_NAME, PRO_PRICE, COM_NAME FROM item_mast JOIN Company_mast
ON PRO_COM= COM_ID




SELECT COM_NAME, AVG(PRO_PRICE) Average_Price FROM item_mast 
JOIN Company_mast
ON PRO_COM=COM_ID
WHERE PRO_PRICE>= 350
GROUP BY COM_NAME





SELECT COM_NAME, MAX(PRO_PRICE) MAXIMUM_PRICE FROM item_mast JOIN Company_mast
ON PRO_COM= COM_ID
GROUP BY COM_NAME






SELECT * FROM EMP_DETAILS JOIN DEPARTMENT
ON EMP_DEPT= DPT_CODE




SELECT EMP_FNAME, EMP_LNAME, DPT_NAME, DPT_ALLOTMENT FROM EMP_DETAILS JOIN DEPARTMENT
ON EMP_DEPT= DPT_CODE




SELECT EMP_FNAME, EMP_LNAME, DPT_NAME FROM EMP_DETAILS JOIN DEPARTMENT
ON EMP_DEPT= DPT_CODE
WHERE DPT_ALLOTMENT>50000