#1
INSERT INTO tbl_stock (vchr_name, int_quantity,int_price,fk_int_supplier) 
VALUES ('Mouse',10,500,1),
('Keyboad',5,450,3),
('Modem',10,1200,2),
('Memory',100,1500,5),
('Headphone',50,750,4),
('Memory',2,3500,4);
                            ecommerce
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |       500 |               1
               2 | Keyboad   |            5 |       450 |               3
               3 | Modem     |           10 |      1200 |               2
               4 | Memory    |          100 |      1500 |               5
               5 | Headphone |           50 |       750 |               4
               6 | Memory    |            2 |      3500 |               4
--------------------------------------------------------------------------
,451.5,1201.5,1501.5,751.5,3501.5     AND pk_int_stock_id>=6; 

-- UPDATE tbl_stock 
-- SET int_price=3501.5,451.5,1201.5,1501.5,751.5,3501.5  
-- WHERE pk_int_stock_id = 6 ;
#2
UPDATE tbl_stock 
SET int_price=3501.5 
WHERE pk_int_stock_id = 6 ;

                                ecommerce
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboad   |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
--------------------------------------------------------------------------

#3
SELECT * FROM tbl_stock WHERE int_price >= 1000;
            ecommerce
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
--------------------------------------------------------------------------

#4
SELECT * FROM tbl_stock 
ORDER BY vchr_name;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboad   |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1
--------------------------------------------------------------------------

#5
SELECT * FROM tbl_stock 
ORDER BY vchr_name LIMIT 3;
       ecommerce
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboad   |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
--------------------------------------------------------------------------

#6
SELECT * FROM tbl_stock
ORDER BY vchr_name DESC
LIMIT 3;
  pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
--------------------------------------------------------------------------

#7
SELECT vchr_name, int_quantity, int_price, (int_quantity * int_price) AS int_quantity_x_int_price FROM tbl_stock;
 vchr_name | int_quantity | int_price | int_quantity_x_int_price
-----------+--------------+-----------+--------------------------
 Mouse     |           10 |     501.5 |                     5015
 Keyboad   |            5 |     451.5 |                   2257.5
 Modem     |           10 |    1201.5 |                    12015
 Memory    |          100 |    1501.5 |                   150150
 Headphone |           50 |     751.5 |                    37575
 Memory    |            2 |    3501.5 |                     7003
 ----------------------------------------------------------------------------------------------------------------

#8
DELETE FROM tbl_stock
WHERE fk_int_supplier = 5;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboad   |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
--------------------------------------------------------------------------

#9
INSERT INTO tbl_dept(vchr_dept_name,vchr_dept_description)
VALUES('Computer Science','CS'),
('Electronics','EC'),
('Commerce','CC'),
('Arts','AR');
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Science | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR
-----------------------------------------------------------



