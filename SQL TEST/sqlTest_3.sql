#1
-- SELECT pk_int_stock_id,vchr_name,int_quantity,int_price,fk_int_supplier, 
-- SUM(int_quantity * int_price) AS Total_cost WHERE id=1 FROM tbl_stock;
SELECT * FROM tbl_stock;
SELECT SUM(int_quantity * int_price) FROM tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboad   |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
total_cost
----------
 63865.5
--------------------------------------------------------------------------

#2
SELECT * FROM tbl_stock;
SELECT SUM(int_quantity) FROM tbl_stock;
pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboad   |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
 sum
-----
 77
-------------------------------------------------------------------------

#3
SELECT UPPER(vchr_name) AS vchr_name , ROUND(int_price) AS int_price FROM tbl_stock;
 vchr_name | int_price
-----------+-----------
 MOUSE     |       502
 KEYBOAD   |       452
 MODEM     |      1202
 HEADPHONE |       752
 MEMORY    |      3502
 -----------------------------------------------------------------------------------

 #4
 SELECT COUNT( DISTINCT vchr_name) AS items FROM tbl_stock;
 items
-------
     5
-------------------------------------------------------------------------------------

#5
SELECT vchr_name WHERE pk_int_stock_id=6, MAX(int_price) AS int_price FROM tbl_stock;
  max
--------
 3501.5
 ------------------------------------------------------------------------------------
#Data insertion of tbl_classes:
INSERT INTO tbl_classes (vchr_class_name,fk_int_dept_id) 
VALUES('CS100',1),
('CS101',1),
('CS102',1),
('CS103',1),
('EC200',2),
('CC300',3),
('AT400',4);
------------------------------------------------------------------------

#Data insertion of tbl_enrollment:
INSERT INTO tbl_enrollment(int_count,fk_int_class_id)
VALUES(40,1),
(15,2),
(10,3),
(12,4),
(60,2),
(14,6),
(200,7);
---------------------------------------------------------------

#6
 SELECT * FROM tbl_enrollment;
 SELECT SUM(int_count) AS total_enrollment FROM tbl_enrollment;
pk_int_enrollment_id | int_count | fk_int_class_id
----------------------+-----------+-----------------
                    8 |        40 |               1
                    9 |        15 |               2
                   10 |        10 |               3
                   11 |        12 |               4
                   12 |        60 |               2
                   13 |        14 |               6
                   14 |       200 |               7
  total_enrollment
------------------
              351
-----------------------------------------------------------------

#7
SELECT COUNT(DISTINCT vchr_class_name) AS different FROM tbl_classes;
 different
-----------
         7
----------------------------------------------------------------------

#8
Already deleted above
----------------------------------------------------------------------

#9
SELECT pk_int_stock_id,vchr_name,int_quantity,int_price, concat(vchr_name,int_price) AS productAndPrice,fk_int_supplier FROM tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | productandprice | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------+-----------------
               1 | Mouse     |           10 |     501.5 | Mouse501.5      |               1
               2 | Keyboad   |            5 |     451.5 | Keyboad451.5    |               3
               3 | Modem     |           10 |    1201.5 | Modem1201.5     |               2
               5 | Headphone |           50 |     751.5 | Headphone751.5  |               4
               6 | Memory    |            2 |    3501.5 | Memory3501.5    |               4
----------------------------------------------------------------------------------------------------------------------------------------  

#10 
# CREATE TABLE tbl_student(EnRl_no INT,Roll_no INT,S_name VARCHAR(20),City VARCHAR(20),Mobile BIGINT,Dob DATE); 
INSERT INTO tbl_student 
VALUES(11,2,'AKHIL','DELHI',9946649401,'1986-01-12'),
(6,4,'MAYA','BANGLORE',9946649402,'1987-11-12'),
(1,8,'ANOOP','BANGLORE',99466649403,'1990-12-22'),
(20,1,'PAUL','COCHIN',9946649404,'1991-03-13'),
(3,5,'SANDEEP','DELHI',9946649405,'1993-06-14');
 enrl_no | roll_no | s_name  |   city   |   mobile    |    dob
---------+---------+---------+----------+-------------+------------
      11 |       2 | AKHIL   | DELHI    |  9946649401 | 1986-01-12
       6 |       4 | MAYA    | BANGLORE |  9946649402 | 1987-11-12
       1 |       8 | ANOOP   | BANGLORE | 99466649403 | 1990-12-22
      20 |       1 | PAUL    | COCHIN   |  9946649404 | 1991-03-13
       3 |       5 | SANDEEP | DELHI    |  9946649405 | 1993-06-14

# CREATE TABLE tbl_grade(Roll_no INT,Course VARCHAR(20),Grade VARCHAR(10));
INSERT INTO tbl_grade 
VALUES(2,'C','A'),
(2,'JAVA','B'),
(1,'C','B'),
(1,'JAVA','A'),
(4,'PHP','A'),
(4,'JAVA','A'),
(4,'C','B'),
(8,'JAVA','B'),
(5,'PHP','A'),
(5,'JAVA','D');

SELECT s_name,course FROM tbl_student  INNER JOIN tbl_grade ON tbl_student.roll_no = tbl_grade.roll_no WHERE grade='A';
 s_name  | course
---------+--------
 AKHIL   | C
 MAYA    | JAVA
 MAYA    | PHP
 PAUL    | JAVA
 SANDEEP | PHP
-----------------------------------------------------------------------------------------------------------------------

#11
SELECT FROM  tbl_grade  COUNT(grade='B') ;
SELECT grade, COUNT(*) from tbl_grade group by grade;

#12
SELECT s_name,mobile,course FROM tbl_student  INNER JOIN tbl_grade ON tbl_student.roll_no = tbl_grade.roll_no WHERE course='C';
 s_name |   mobile   | course
--------+------------+--------
 AKHIL  | 9946649401 | C
 MAYA   | 9946649402 | C
 PAUL   | 9946649404 | C
-----------------------------------------------------------------------------------------------------------------------------

#13
SELECT * FROM tbl_student 
 WHERE city = 'BANGLORE' AND roll_no in (SELECT roll_no FROM tbl_grade WHERE course='JAVA') ;
  enrl_no | roll_no | s_name |   city   |   mobile    |    dob
---------+---------+--------+----------+-------------+------------
       6 |       4 | MAYA   | BANGLORE |  9946649402 | 1987-11-12
       1 |       8 | ANOOP  | BANGLORE | 99466649403 | 1990-12-22

-- SELECT s_name,mobile,course,city FROM tbl_student  INNER JOIN tbl_grade ON tbl_student.roll_no = tbl_grade.roll_no WHERE course='JAVA' WHERE city = 'BANGLORE' from tbl_student ;

ALTER TABLE tbl_student ALTER COLUMN dob SET DATA TYPE date USING to_date(DATE, 'YYYY-MM-DD');
select to_date(dob, 'Mon/DD/YYYY');


