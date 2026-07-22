mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.03 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer_details    |
| department          |
| employee            |
+---------------------+
3 rows in set (0.02 sec)

mysql> select * from customer_details;
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> select distinct city from customer_details;
+---------+
| city    |
+---------+
| Thane   |
| Diva    |
| Vikroli |
+---------+
3 rows in set (0.02 sec)

mysql> select *from customer_details where pincode between 400000 and 400110;
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
2 rows in set (0.00 sec)

mysql> select *from customer_details where pincode not between 400000 and 400110;
+---------+-----------+-------+---------+
| cust_id | full_name | city  | pincode |
+---------+-----------+-------+---------+
| 101     | Tanvi     | Thane |  400606 |
| 102     | Nisha     | Thane |  400606 |
+---------+-----------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer_details where full_name between 'a' and 'f';
Empty set (0.00 sec)

mysql> select * from customer_details where full_name between 'a' and 'v';
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer_details where full_name between 'a' and 'i';
Empty set (0.00 sec)

mysql> select * from customer_details where full_name not between 'a' and 'i';
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer_details where cust_id in('101', '102');
+---------+-----------+-------+---------+
| cust_id | full_name | city  | pincode |
+---------+-----------+-------+---------+
| 101     | Tanvi     | Thane |  400606 |
| 102     | Nisha     | Thane |  400606 |
+---------+-----------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer_details where cust_id not in('101', '102');
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer_details where cust_id is null;
Empty set (0.00 sec)

mysql> select * from customer_details where cust_id is not null;
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer_details order by pincode;
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 104     | Payal     | Vikroli |  400046 |
| 103     | Mansi     | Diva    |  400106 |
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer_details order by pincode desc;
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer_details order by pincode desc limit 3;
+---------+-----------+-------+---------+
| cust_id | full_name | city  | pincode |
+---------+-----------+-------+---------+
| 101     | Tanvi     | Thane |  400606 |
| 102     | Nisha     | Thane |  400606 |
| 103     | Mansi     | Diva  |  400106 |
+---------+-----------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer_details where city='Thane' and cust_id='101';
+---------+-----------+-------+---------+
| cust_id | full_name | city  | pincode |
+---------+-----------+-------+---------+
| 101     | Tanvi     | Thane |  400606 |
+---------+-----------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer_details where city='Thane' or cust_id='101';
+---------+-----------+-------+---------+
| cust_id | full_name | city  | pincode |
+---------+-----------+-------+---------+
| 101     | Tanvi     | Thane |  400606 |
| 102     | Nisha     | Thane |  400606 |
+---------+-----------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer_details;
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> select sum(pincode) from customer_details;
+--------------+
| sum(pincode) |
+--------------+
|      1601364 |
+--------------+
1 row in set (0.02 sec)

mysql> select avg(pincode) from customer_details;
+--------------+
| avg(pincode) |
+--------------+
|  400341.0000 |
+--------------+
1 row in set (0.00 sec)

mysql> select count(pincode) from customer_details;
+----------------+
| count(pincode) |
+----------------+
|              4 |
+----------------+
1 row in set (0.01 sec)

mysql> select max(pincode) from customer_details;
+--------------+
| max(pincode) |
+--------------+
|       400606 |
+--------------+
1 row in set (0.02 sec)

mysql> select min(pincode) from customer_details;
+--------------+
| min(pincode) |
+--------------+
|       400046 |
+--------------+
1 row in set (0.00 sec)

mysql> select * from customer_details;
+---------+-----------+---------+---------+
| cust_id | full_name | city    | pincode |
+---------+-----------+---------+---------+
| 101     | Tanvi     | Thane   |  400606 |
| 102     | Nisha     | Thane   |  400606 |
| 103     | Mansi     | Diva    |  400106 |
| 104     | Payal     | Vikroli |  400046 |
+---------+-----------+---------+---------+
4 rows in set (0.00 sec)

mysql> alter table customer_details add salary int(30);
Query OK, 0 rows affected, 1 warning (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> select * from customer_details;
+---------+-----------+---------+---------+--------+
| cust_id | full_name | city    | pincode | salary |
+---------+-----------+---------+---------+--------+
| 101     | Tanvi     | Thane   |  400606 |   NULL |
| 102     | Nisha     | Thane   |  400606 |   NULL |
| 103     | Mansi     | Diva    |  400106 |   NULL |
| 104     | Payal     | Vikroli |  400046 |   NULL |
+---------+-----------+---------+---------+--------+
4 rows in set (0.00 sec)

mysql> update customer_details set salary=20000 where cust_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_details set salary=25000 where cust_id=102;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_details set salary=35000 where cust_id=103;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer_details set salary=40000 where cust_id=104;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer_details;
+---------+-----------+---------+---------+--------+
| cust_id | full_name | city    | pincode | salary |
+---------+-----------+---------+---------+--------+
| 101     | Tanvi     | Thane   |  400606 |  20000 |
| 102     | Nisha     | Thane   |  400606 |  25000 |
| 103     | Mansi     | Diva    |  400106 |  35000 |
| 104     | Payal     | Vikroli |  400046 |  40000 |
+---------+-----------+---------+---------+--------+
4 rows in set (0.00 sec)

mysql> select sum(salary) from customer_details;
+-------------+
| sum(salary) |
+-------------+
|      120000 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(salary) from customer_details;
+---------------+
| count(salary) |
+---------------+
|             4 |
+---------------+
1 row in set (0.00 sec)

mysql> select max(salary) from customer_details;
+-------------+
| max(salary) |
+-------------+
|       40000 |
+-------------+
1 row in set (0.00 sec)

mysql> select min(salary) from customer_details;
+-------------+
| min(salary) |
+-------------+
|       20000 |
+-------------+
1 row in set (0.00 sec)

mysql> select avg(salary) from customer_details;
+-------------+
| avg(salary) |
+-------------+
|  30000.0000 |
+-------------+
1 row in set (0.00 sec)