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
SELECT MAX(int_price) FROM tbl_stock;
  max
--------
 3501.5
 ------------------------------------------------------------------------------------

INSERT INTO tbl_enrollment(int_count,fk_int_class_id)
VALUES,(40,1),
(15,2),
(10,3),
(12,4)
(60,2)
(14,6)
(200,7);

 #6
 SELECT * FROM tbl_enrollment;
 SELECT SUM()