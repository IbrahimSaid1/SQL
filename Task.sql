CREATE TABLE departments ( 
DEPARTMENT_ID INT PRIMARY KEY, 
DEPARTMENT_NAME VARCHAR(50) NOT NULL, 
MANAGER_ID INT NOT NULL, 
LOCATION_ID INT NOT NULL 
); 
  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, 
LOCATION_ID) 
VALUES 
(10, 'Administration', 200, 1700), 
(20, 'Marketing', 201, 1800), 
(30, 'Purchasing', 114, 1700), 
(40, 'Human Resources', 203, 2400), 
(50, 'Shipping', 121, 1500), 
(60, 'IT', 103, 1400), 
(70, 'Public Relations', 204, 2700), 
(80, 'Sales', 145, 2500), 
(90, 'Executive', 100, 1700), 
(100, 'Finance', 108, 1700), 
(110, 'Accounting', 205, 1700), 
(120, 'Treasury', 0, 1700), 
(130, 'Corporate Tax', 0, 1700), 
(140, 'Control And Credit', 0, 1700), 
(150, 'Shareholder Services', 0, 1700), 
(160, 'Benefits', 0, 1700), 
(170, 'Manufacturing', 0, 1700), 
(180, 'Construction', 0, 1700), 
(190, 'Contracting', 0, 1700), 
(200, 'Operations', 0, 1700), 
(210, 'IT Support', 0, 1700), 
(220, 'NOC', 0, 1700), 
(230, 'IT Helpdesk', 0, 1700), 
(240, 'Government Sales', 0, 1700), 
(250, 'Retail Sales', 0, 1700), 
(260, 'Recruiting', 0, 1700), 
(270, 'Payroll', 0, 1700) ;
 
 
create table Employee ( 
EMPLOYEE_ID int PRIMARY KEY, 
FIRST_NAME varchar(50), 
LAST_NAME varchar(50), 
EMAIL varchar(50), 
PHONE_NUMBER varchar(50), 
HIRE_DATE Date , 
JOB_ID int , 
SALARY float, 
COMMISSION_PTC float, 
MANAGER_ID int, 
DEPARTMENT_ID int) 
  
 
ALTER TABLE Employee
ALTER COLUMN JOB_ID varchar(50);
 
insert into Employee values  
(100,'Steven'   ,'King'		,'SKING'    , '515.123.4567'    , '2003-06-17'  ,'AD_PRES'         ,   24000.00 ,           0.00 ,          0 ,            90     ),
(101,'Neena'    ,'Kochhar'  ,'NKOCHHAR' , '515.123.4568'    , '2005-09-21'  ,'AD_VP'           ,   17000.00 ,           0.00 ,        100 ,            90 ),
(102,'Lex'		,'De Haan'  ,'LDEHAAN'  , '515.123.4569'    , '2001-01-13'  ,'AD_VP'           ,   17000.00 ,           0.00 ,        100 ,            90     ),
(103,'Alexand'  ,'Hunold'   ,'AHUNOLD'  , '590.423.4567'    , '2006-01-03'  ,'IT_PROG'     ,    9000.00 ,           0.00 ,        102 ,            60     ),
(104,'Bruce'    ,'Ernst'    ,'BERNST'   , '590.423.4568'    , '2007-05-21'  ,'IT_PROG'         ,    6000.00 ,           0.00 ,        103 ,            60 ),
(105,'David'    ,'Austin'   ,'DAUSTIN'  , '590.423.4569'    , '2005-06-25'  ,'IT_PROG'         ,    4800.00 ,           0.00 ,        103 ,            60 ),
(106,'Valli'    ,'Pataballa','VPATABAL' , '590.423.4560'    , '2006-02-05'  ,'IT_PROG'     ,    4800.00 ,           0.00 ,        103 ,            60 ),
(107,'Diana'    ,'Lorentz'  ,'DLORENTZ' , '590.423.5567'    , '2007-02-07'  ,'IT_PROG'         ,    4200.00 ,           0.00 ,        103 ,            60 ),
(108,'Nancy'    ,'Greenberg','NGREENBE' , '515.124.4569'    , '2002-08-17'  ,'FI_MGR'      ,   12008.00 ,           0.00 ,        101 ,           100 ),
(109,'Daniel'   ,'Faviet'   ,'DFAVIET'  , '515.124.4169'    , '2002-08-16'  ,'FI_ACCOUNT'  ,    9000.00 ,           0.00 ,        108 ,           100     ),
(110,'John'		,'Chen'		,'JCHEN'    , '515.124.4269'    , '2005-09-28'  ,'FI_ACCOUNT'          ,    8200.00 ,           0.00 ,        108 ,           100     ),
(111,'Ismael'   ,'Sciarra'  ,'ISCIARRA' , '515.124.4369'    , '2005-09-30'  ,'FI_ACCOUNT'  ,    7700.00 ,           0.00 ,        108 ,           100     ),
(112,'Jose Ma'  ,'Urman'    ,'JMURMAN'  , '515.124.4469'    , '2006-03-07'  ,'FI_ACCOUNT'  ,    7800.00 ,           0.00 ,        108 ,           100     ),
(113,'Luis'		,'Popp'		,'LPOPP'    , '515.124.4567'    , '2007-12-07'  ,'FI_ACCOUNT'          ,    6900.00 ,           0.00 ,        108 ,           100     ),
(114,'Den'		,'Raphaely' ,'DRAPHEAL' , '515.127.4561'    , '2002-12-07'  ,'PU_MAN'          ,   11000.00 ,           0.00 ,        100 ,            30     ),
(115,'Alexand'  ,'Khoo'		,'AKHOO'    , '515.127.4562'    , '2003-05-18'  ,'PU_CLERK'        ,    3100.00 ,           0.00 ,        114 ,            30     ),
(116,'Shelli'   ,'Baida'    ,'SBAIDA'   , '515.127.4563'    , '2005-12-24'  ,'PU_CLERK'    ,    2900.00 ,           0.00 ,        114 ,            30     ),
(117,'Sigal'    ,'Tobias'   ,'STOBIAS'  , '515.127.4564'    , '2005-07-24'  ,'PU_CLERK'        ,    2800.00 ,           0.00 ,        114 ,            30 ),
(118,'Guy'		,'Himuro'   ,'GHIMURO'  , '515.127.4565'    , '2006-11-15'  ,'PU_CLERK'        ,    2600.00 ,           0.00 ,        114 ,            30     ),
(119,'Karen'    ,'Colmenares','KCOLMENA', '515.127.4566'    , '2007-08-10'  ,'PU_CLERK'    ,    2500.00 ,           0.00 ,        114 ,            30 ),
(120,'Matthew'  ,'Weiss'    ,'MWEISS'   , '650.123.1234'    , '2004-07-18'  ,'ST_MAN'      ,    8000.00 ,           0.00 ,        100 ,            50     ),
(121,'Adam'		,'Fripp'    ,'AFRIPP'   , '650.123.2234'    , '2005-04-10'  ,'ST_MAN'          ,    8200.00 ,           0.00 ,        100 ,            50     ),
(122,'Payam'    ,'Kaufling' ,'PKAUFLIN' , '650.123.3234'    , '2003-05-01'  ,'ST_MAN'          ,    7900.00 ,           0.00 ,        100 ,            50 ),
(123,'Shanta'   ,'Vollman'  ,'SVOLLMAN' , '650.123.4234'    , '2005-10-10'  ,'ST_MAN'      ,    6500.00 ,           0.00 ,        100 ,            50     ),
(124,'Kevin'    ,'Mourgos'  ,'KMOURGOS' , '650.123.5234'    , '2007-11-16'  ,'ST_MAN'          ,    5800.00 ,           0.00 ,        100 ,            50 ),
(125,'Julia'    ,'Nayer'    ,'JNAYER'   , '650.124.1214'    , '2005-07-16'  ,'ST_CLERK'        ,    3200.00 ,           0.00 ,        120 ,            50 ),
(126,'Irene'    ,'Mikkilinen','IMIKKILI' , '650.124.1224'    , '2006-09-28'  ,'ST_CLERK'    ,    2700.00 ,           0.00 ,        120 ,            50 ),
(127,'James'    ,'Landry'   ,'JLANDRY'  , '650.124.1334'    , '2007-01-14'  ,'ST_CLERK'        ,    2400.00 ,           0.00 ,        120 ,            50 ),
(128,'Steven'   ,'Markle'   ,'SMARKLE'  , '650.124.1434'    , '2008-03-08'  ,'ST_CLERK'    ,    2200.00 ,           0.00 ,        120 ,            50     ),
(129,'Laura'    ,'Bissot'   ,'LBISSOT'  , '650.124.5234'    , '2005-08-20'  ,'ST_CLERK'        ,    3300.00 ,           0.00 ,        121 ,            50 ),
(130,'Mozhe'    ,'Atkinson' ,'MATKINSO' , '650.124.6234'    , '2005-10-30'  ,'ST_CLERK'        ,    2800.00 ,           0.00 ,        121 ,            50 ),
(131,'James'    ,'Marlow'   ,'JAMRLOW'  , '650.124.7234'    , '2005-02-16'  ,'ST_CLERK'        ,    2500.00 ,           0.00 ,        121 ,            50 ),
(132,'TJ'		,'Olson'    ,'TJOLSON'  , '650.124.8234'    , '2007-04-10'  ,'ST_CLERK'        ,    2100.00 ,           0.00 ,        121 ,            50     ),
(133,'Jason'    ,'Mallin'   ,'JMALLIN'  , '650.127.1934'    , '2004-06-14'  ,'ST_CLERK'        ,    3300.00 ,           0.00 ,        122 ,            50 ),
(134,'Michael'  ,'Rogers'   ,'MROGERS'  , '650.127.1834'    , '2006-08-26'  ,'ST_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50     ),
(135,'Ki'		,'Gee'		,'KGEE'		, '650.127.1734'    , '2007-12-12'  ,'ST_CLERK'                ,    2400.00 ,           0.00 ,        122 ,            50     ),
(136,'Hazel'    ,'Philtanker','HPHILTAN', '650.127.1634'    , '2008-02-06'  ,'ST_CLERK'    ,    2200.00 ,           0.00 ,        122 ,            50 ),
(137,'Renske'   ,'Ladwig'	,'RLADWIG'  , '650.121.1234'    , '2003-07-14'  ,'ST_CLERK'    ,    3600.00 ,           0.00 ,        123 ,            50     ),
(138,'Stephen'  ,'Stiles'   ,'SSTILES'  , '650.121.2034'    , '2005-10-26'  ,'ST_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50     ),
(139,'John'		,'Seo'		,'JSEO'		, '650.121.2019'    , '2006-02-12'  ,'ST_CLERK'                ,    2700.00 ,           0.00 ,        123 ,            50     ),
(140,'Joshua'   ,'Patel'    ,'JPATEL'   , '650.121.1834'    , '2006-04-06'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        123 ,            50     ),
(141,'Trenna'   ,'Rajs'		,'TRAJS'    , '650.121.8009'    , '2003-10-17'  ,'ST_CLERK'        ,    3500.00 ,           0.00 ,        124 ,            50     ),
(142,'Curtis'   ,'Davies'   ,'CDAVIES'  , '650.121.2994'    , '2005-01-29'  ,'ST_CLERK'    ,    3100.00 ,           0.00 ,        124 ,            50     ),
(143,'Randall'  ,'Matos'    ,'RMATOS'   , '650.121.2874'    , '2006-03-15'  ,'ST_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(144,'Peter'    ,'Vargas'   ,'PVARGAS'  , '650.121.2004'    , '2006-07-09'  ,'ST_CLERK'        ,    2500.00 ,           0.00 ,        124 ,            50 ),
(145,'John'		,'Russell'  ,'JRUSSEL'  , '011.44.1344.429' , '2004-10-01'  ,'SA_MAN'          ,   14000.00 ,           0.40 ,        100 ,            80     ),
(146,'Karen'    ,'Partners' ,'KPARTNER' , '011.44.1344.467' , '2005-01-05'  ,'SA_MAN'          ,   13500.00 ,           0.30 ,        100 ,            80 ),
(147,'Alberto'  ,'Errazuriz','AERRAZUR' , '011.44.1344.429' , '2005-03-10'  ,'SA_MAN'  ,   12000.00 ,           0.30 ,        100 ,            80     ),
(148,'Gerald'   ,'Cambrault','GCAMBRAU' , '011.44.1344.619' , '2007-10-15'  ,'SA_MAN'  ,   11000.00 ,           0.30 ,        100 ,            80     ),
(149,'Eleni'    ,'Zlotkey'  ,'EZLOTKEY' , '011.44.1344.429' , '2008-01-29'  ,'SA_MAN'          ,   10500.00 ,           0.20 ,        100 ,            80 ),
(150,'Peter'    ,'Tucker'   ,'PTUCKER'  , '011.44.1344.129' , '2005-01-30'  ,'SA_REP'          ,   10000.00 ,           0.30 ,        145 ,            80 ),
(151,'David'    ,'Bernstein','DBERNSTE' , '011.44.1344.345' , '2005-03-24'  ,'SA_REP'      ,    9500.00 ,           0.25 ,        145 ,            80 ),
(152,'Peter'    ,'Hall'		,'PHALL'    , '011.44.1344.478' , '2005-08-20'  ,'SA_REP'              ,    9000.00 ,           0.25 ,        145 ,            80 ),
(153,'Christo'  ,'Olsen'    ,'COLSEN'   , '011.44.1344.498' , '2006-03-30'  ,'SA_REP'      ,    8000.00 ,           0.20 ,        145 ,            80     ),
(154,'Nanette'  ,'Cambrault','NCAMBRAU' , '011.44.1344.987' , '2006-12-09'  ,'SA_REP'  ,    7500.00 ,           0.20 ,        145 ,            80     ),
(155,'Oliver'   ,'Tuvault'  ,'OTUVAULT' , '011.44.1344.486' , '2007-11-23'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        145 ,            80     ),
(156,'Janette'  ,'King'		,'JKING'    , '011.44.1345.429' , '2004-01-30'  ,'SA_REP'          ,   10000.00 ,           0.35 ,        146 ,            80     ),
(157,'Patrick'  ,'Sully'    ,'PSULLY'   , '011.44.1345.929' , '2004-03-04'  ,'SA_REP'      ,    9500.00 ,           0.35 ,        146 ,            80     ),
(158,'Allan'    ,'McEwen'   ,'AMCEWEN'  , '011.44.1345.829' , '2004-08-01'  ,'SA_REP'          ,    9000.00 ,           0.35 ,        146 ,            80 ),
(159,'Lindsey'  ,'Smith'    ,'LSMITH'   , '011.44.1345.729' , '2005-03-10'  ,'SA_REP'      ,    8000.00 ,           0.30 ,        146 ,            80     ),
(160,'Louise'   ,'Doran'    ,'LDORAN'   , '011.44.1345.629' , '2005-12-15'  ,'SA_REP'      ,    7500.00 ,           0.30 ,        146 ,            80     ),
(161,'Sarath'   ,'Sewall'   ,'SSEWALL'  , '011.44.1345.529' , '2006-11-03'  ,'SA_REP'      ,    7000.00 ,           0.25 ,        146 ,            80     ),
(162,'Clara'    ,'Vishney'  ,'CVISHNEY' , '011.44.1346.129' , '2005-11-11'  ,'SA_REP'          ,   10500.00 ,           0.25 ,        147 ,            80 ),
(163,'Daniell'  ,'Greene'   ,'DGREENE'  , '011.44.1346.229' , '2007-03-19'  ,'SA_REP'      ,    9500.00 ,           0.15 ,        147 ,            80     ),
(164,'Mattea'   ,'Marvins'  ,'MMARVINS' , '011.44.1346.329' , '2008-01-24'  ,'SA_REP'      ,    7200.00 ,           0.10 ,        147 ,            80     ),
(165,'David'    ,'Lee'		,'DLEE'		, '011.44.1346.529' , '2008-02-23'  ,'SA_REP'                  ,    6800.00 ,           0.10 ,        147 ,            80 ),
(166,'Sundar'   ,'Ande'		,'SANDE'    , '011.44.1346.629' , '2008-03-24'  ,'SA_REP'      ,    6400.00 ,           0.10 ,        147 ,            80     ),
(167,'Amit'		,'Banda'    ,'ABANDA'   , '011.44.1346.729' , '2008-04-21'  ,'SA_REP'	   ,    6200.00 ,           0.10 ,        147 ,            80     ),
(168,'Lisa'		,'Ozer'		,'LOZER'    , '011.44.1343.929' , '2005-03-11'  ,'SA_REP'              ,   11500.00 ,           0.25 ,        148 ,            80     ),
(169,'Harriso'  ,'Bloom'    ,'HBLOOM'   , '011.44.1343.829' , '2006-03-23'  ,'SA_REP'      ,   10000.00 ,           0.20 ,        148 ,            80     ),
(170,'Tayler'   ,'Fox'		,'TFOX'		, '011.44.1343.729' , '2006-01-24'  ,'SA_REP'      ,    9600.00 ,           0.20 ,        148 ,            80     ),
(171,'William'  ,'Smith'    ,'WSMITH'   , '011.44.1343.629' , '2007-02-23'  ,'SA_REP'      ,    7400.00 ,           0.15 ,        148 ,            80     ),
(172,'Elizabe'  ,'Bates'    ,'EBATES'   , '011.44.1343.529' , '2007-03-24'  ,'SA_REP'      ,    7300.00 ,           0.15 ,        148 ,            80     ),
(173,'Sundita'  ,'Kumar'    ,'SKUMAR'   , '011.44.1343.329' , '2008-04-21'  ,'SA_REP'      ,    6100.00 ,           0.10 ,        148 ,            80     ),
(174,'Ellen'    ,'Abel'		,'EABEL'    , '011.44.1644.429' , '2004-05-11'  ,'SA_REP'      ,   11000.00 ,           0.30 ,        149 ,            80	  ),
(175,'Alyssa'   ,'Hutton'   ,'AHUTTON'  , '011.44.1644.429' , '2005-03-19'  ,'SA_REP'      ,    8800.00 ,           0.25 ,        149 ,            80     ),
(176,'Jonatho'  ,'Taylor'   ,'JTAYLOR'  , '011.44.1644.429' , '2006-03-24'  ,'SA_REP'      ,    8600.00 ,           0.20 ,        149 ,            80     ),
(177,'Jack'		,'Livingston','JLIVINGS' , '011.44.1644.429', '2006-04-23'  ,'SA_REP'      ,    8400.00 ,           0.20 ,        149 ,            80     ),
(178,'Kimbere'  ,'Grant'    ,'KGRANT'   , '011.44.1644.429' , '2007-05-24'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        149 ,             0     ),
(179,'Charles'  ,'Johnson'  ,'CJOHNSON' , '011.44.1644.429' , '2008-01-04'  ,'SA_REP'      ,    6200.00 ,           0.10 ,        149 ,            80     ),
(180,'Winston'  ,'Taylor'   ,'WTAYLOR'  , '650.507.9876'    , '2006-01-24'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        120 ,            50     ),
(181,'Jean'		,'Fleaur'   ,'JFLEAUR'  , '650.507.9877'    , '2006-02-23'  ,'SH_CLERK'        ,    3100.00 ,           0.00 ,        120 ,            50     ),
(182,'Martha'   ,'Sullivan' ,'MSULLIVA' , '650.507.9878'    , '2007-06-21'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        120 ,            50     ),
(183,'Girard'   ,'Geoni'    ,'GGEONI'   , '650.507.9879'    , '2008-02-03'  ,'SH_CLERK'    ,    2800.00 ,           0.00 ,        120 ,            50     ),
(184,'Nandita'  ,'Sarchand' ,'NSARCHAN' , '650.509.1876'    , '2004-01-27'  ,'SH_CLERK'    ,    4200.00 ,           0.00 ,        121 ,            50     ),
(185,'Alexis'   ,'Bull'		,'ABULL'    , '650.509.2876'    , '2005-02-20'  ,'SH_CLERK'        ,    4100.00 ,           0.00 ,        121 ,            50     ),
(186,'Julia'    ,'Dellinger','JDELLING' , '650.509.3876'    , '2006-06-24'  ,'SH_CLERK'    ,    3400.00 ,           0.00 ,        121 ,            50 ),
(187,'Anthony'  ,'Cabrio'   ,'ACABRIO'  , '650.509.4876'    , '2007-02-07'  ,'SH_CLERK'    ,    3000.00 ,           0.00 ,        121 ,            50     ),
(188,'Kelly'    ,'Chung'    ,'KCHUNG'   , '650.505.1876'    , '2005-06-14'  ,'SH_CLERK'        ,    3800.00 ,           0.00 ,        122 ,            50 ),
(189,'Jennife'  ,'Dilly'    ,'JDILLY'   , '650.505.2876'    , '2005-08-13'  ,'SH_CLERK'    ,    3600.00 ,           0.00 ,        122 ,            50     ),
(190,'Timothy'  ,'Gates'    ,'TGATES'   , '650.505.3876'    , '2006-07-11'  ,'SH_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50     ),
(191,'Randall'  ,'Perkins'  ,'RPERKINS' , '650.505.4876'    , '2007-12-19'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        122 ,            50     ),
(192,'Sarah'    ,'Bell'		,'SBELL'    , '650.501.1876'    , '2004-02-04'  ,'SH_CLERK'            ,    4000.00 ,           0.00 ,        123 ,            50 ),
(193,'Britney'  ,'Everett'  ,'BEVERETT' , '650.501.2876'    , '2005-03-03'  ,'SH_CLERK'    ,    3900.00 ,           0.00 ,        123 ,            50     ),
(194,'Samuel'   ,'McCain'   ,'SMCCAIN'  , '650.501.3876'    , '2006-07-01'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50     ),
(195,'Vance'    ,'Jones'    ,'VJONES'   , '650.501.4876'    , '2007-03-17'  ,'SH_CLERK'        ,    2800.00 ,           0.00 ,        123 ,            50 ),
(196,'Alana'    ,'Walsh'    ,'AWALSH'   , '650.507.9811'    , '2006-04-24'  ,'SH_CLERK'        ,    3100.00 ,           0.00 ,        124 ,            50 ),
(197,'Kevin'    ,'Feeney'   ,'KFEENEY'  , '650.507.9822'    , '2006-05-23'  ,'SH_CLERK'        ,    3000.00 ,           0.00 ,        124 ,            50 ),
(198,'Donald'   ,'OConnell' ,'DOCONNEL' , '650.507.9833'    , '2007-06-21'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(199,'Douglas'  ,'Grant'    ,'DGRANT'   , '650.507.9844'    , '2008-01-13'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(200,'Jennife'  ,'Whalen'   ,'JWHALEN'  , '515.123.4444'    , '2003-09-17'  ,'AD_ASST'     ,    4400.00 ,           0.00 ,        101 ,            10     ),
(201,'Michael'  ,'Hartstein','MHARTSTE' , '515.123.5555'    , '2004-02-17'  ,'MK_MAN'  ,   13000.00 ,           0.00 ,        100 ,            20     ),
(202,'Pat'		,'Fay'		,'PFAY'		, '603.123.6666'    , '2005-08-17'  ,'MK_REP'                  ,    6000.00 ,           0.00 ,        201 ,            20     ),
(203,'Susan'    ,'Mavris'   ,'SMAVRIS'  , '515.123.7777'    , '2002-06-07'  ,'HR_REP'          ,    6500.00 ,           0.00 ,        101 ,            40 ),
(204,'Hermann'  ,'Baer'		,'HBAER'    , '515.123.8888'    , '2002-06-07'  ,'PR_REP'          ,   10000.00 ,           0.00 ,        101 ,            70     ),
(205,'Shelley'  ,'Higgins'  ,'SHIGGINS' , '515.123.8080'    , '2002-06-07'  ,'AC_MGR'      ,   12008.00 ,           0.00 ,        101 ,           110     ),
(206,'William'  ,'Gietz'    ,'WGIETZ'   , '515.123.8181'    , '2002-06-07'  ,'AC_ACCOUNT'  ,    8300.00 ,           0.00 ,        205 ,           110     );

 
CREATE TABLE Locations ( 
    LOCATION_ID INT PRIMARY KEY, 
    STREET_ADDRESS VARCHAR(255), 
    POSTAL_CODE VARCHAR(255), 
    CITY VARCHAR(255), 
    STATE_PROVINCE VARCHAR(255), 
    COUNTRY_ID CHAR(2) 
); 
  
 
 

 
 
 
INSERT INTO Locations 
(LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
COUNTRY_ID) 
VALUES 
(1000, '1297 Via Cola di Rie', '989', 'Roma', '', 'IT'), 
(1100, '93091 Calle della Testa', '10934', 'Venice', '', 'IT'), 
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'), 
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP'), 
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'), 
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'), 
(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'), 
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'), 
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'), 
(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'), 
(2000, '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN'), 
(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'), 
(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'), 
(2300, '198 Clementi North', '540198', 'Singapore', '', 'SG'), 
(2400, '8204 Arthur St', '', 'London', '', 'UK'), 
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'), 
(2600, '9702 Chester Road', '9629850 293', 'Stretford', 'Manchester', 'UK'), 
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'), 
(2800, 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'), 
(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'), 
(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'), 
(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'), 
(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX'); 
 
 
 
 
create table Job_grades ( 
GRADE_LEVEL varchar(50), 
LOWEST_SAL int, 
HIGHEST_SAL int) 
  
insert into Job_grades values 
('A', 1000,2999), 
('B', 3000, 5999), 
('C', 6000, 9999), 
('D',10000,14999), 
('E' , 15000,24999), 
('F', 25000,40000); 




SELECT * FROM employee





SELECT FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME FROM Employee e JOIN departments d
ON e.DEPARTMENT_ID= d.DEPARTMENT_ID



SELECT FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, CITY, STATE_PROVINCE FROM Employee e JOIN  departments d 
ON e.DEPARTMENT_ID= d.DEPARTMENT_ID 
JOIN Locations l
ON l.LOCATION_ID= d.LOCATION_ID



SELECT FIRST_NAME, LAST_NAME, SALARY, GRADE_LEVEL FROM Employee JOIN Job_grades
ON SALARY BETWEEN LOWEST_SAL AND HIGHEST_SAL



SELECT DISTINCT FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME FROM Employee e JOIN departments d
ON e.DEPARTMENT_ID= 80 OR e.DEPARTMENT_ID= 40


SELECT FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, CITY, STATE_PROVINCE FROM Employee e JOIN  departments d 
ON e.DEPARTMENT_ID= d.DEPARTMENT_ID AND FIRST_NAME LIKE '%z%'
JOIN Locations l
ON l.LOCATION_ID= d.LOCATION_ID





SELECT FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME FROM departments d LEFT JOIN Employee e
ON e.DEPARTMENT_ID= d.DEPARTMENT_ID




SELECT FIRST_NAME, LAST_NAME, SALARY FROM Employee
WHERE SALARY <(SELECT SALARY FROM Employee
WHERE EMPLOYEE_ID = 182)




SELECT FIRST_NAME, MANAGER_ID FROM Employee




SELECT DEPARTMENT_NAME, CITY, STATE_PROVINCE FROM departments JOIN Locations
ON departments.LOCATION_ID= Locations.LOCATION_ID





SELECT FIRST_NAME, MANAGER_ID FROM Employee
WHERE MANAGER_ID = 0




SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM Employee
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM Employee
WHERE LAST_NAME = 'Austin')




SELECT DEPARTMENT_NAME, AVG(salary) Average_Salary, COUNT(COMMISSION_PTC) Number_Employee FROM departments d
JOIN employee e		
ON d.DEPARTMENT_ID= e.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME



SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME FROM Employee e JOIN departments d
ON e.DEPARTMENT_ID= d.DEPARTMENT_ID




SELECT FIRST_NAME, LAST_NAME, SALARY FROM Employee e JOIN  departments d 
ON e.DEPARTMENT_ID= d.DEPARTMENT_ID 
JOIN Locations l
ON l.LOCATION_ID= d.LOCATION_ID AND CITY= 'London'





SELECT DEPARTMENT_NAME, COUNT(EMPLOYEE_ID) Number_Employee
FROM departments d JOIN Employee e
ON d.DEPARTMENT_ID= e.DEPARTMENT_ID 
GROUP BY DEPARTMENT_NAME






