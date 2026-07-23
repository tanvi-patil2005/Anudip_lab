mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> create database ecommerce;
Query OK, 1 row affected (0.03 sec)

mysql> use ecommerce;
Database changed
mysql> create table customer(cust_id VARCHAR(10) primary key, name VARCHAR(30) not null, city VARCHAR(20) not null, pincode INT(6) not null);
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into customer(cust_id, name, city, pincode) values("C101", "Tanvi", "Thane", 400606);
Query OK, 1 row affected (0.03 sec)

mysql> insert into customer(cust_id, name, city, pincode) values("C102", "Snehal", "Thane", 400606), ("C103","Nisha", "Thane", 400606), ("C104", "Payal", "Vikroli", 400079);
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+---------+--------+---------+---------+
| cust_id | name   | city    | pincode |
+---------+--------+---------+---------+
| C101    | Tanvi  | Thane   |  400606 |
| C102    | Snehal | Thane   |  400606 |
| C103    | Nisha  | Thane   |  400606 |
| C104    | Payal  | Vikroli |  400079 |
+---------+--------+---------+---------+
4 rows in set (0.00 sec)

mysql> select name from customer;
+--------+
| name   |
+--------+
| Tanvi  |
| Snehal |
| Nisha  |
| Payal  |
+--------+
4 rows in set (0.00 sec)