mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.03 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.04 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> insert into customer values("101", "Tanvi", "Thane", 400606),("102", "Nisha", "Thane", 400606),("103", "Mansi", "Diva", 400106),("104", "Payal", "Vikroli", 400046);
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+---------+-------+---------+---------+
| cust_id | name  | city    | pincode |
+---------+-------+---------+---------+
| 101     | Tanvi | Thane   |  400606 |
| 102     | Nisha | Thane   |  400606 |
| 103     | Mansi | Diva    |  400106 |
| 104     | Payal | Vikroli |  400046 |
+---------+-------+---------+---------+
4 rows in set (0.00 sec)

mysql> alter table customer modify name varchar(10) not null;
Query OK, 4 rows affected (0.15 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table customer modify name varchar(20) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table customer rename column name to full_name;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(10) | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | NO   |     | NULL    |       |
| pincode   | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table customer modify city varchar(20) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(10) | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | NO   |     | NULL    |       |
| pincode   | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)


mysql> desc customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(10) | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | NO   |     | NULL    |       |
| pincode   | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> alter table customer add email varchar(30) not null;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(10) | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | NO   |     | NULL    |       |
| pincode   | int         | NO   |     | NULL    |       |
| email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table customer rename to customer_details;
Query OK, 0 rows affected (0.04 sec)

mysql> desc customer_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(10) | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | NO   |     | NULL    |       |
| pincode   | int         | NO   |     | NULL    |       |
| email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table customer_details drop column email;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(10) | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | NO   |     | NULL    |       |
| pincode   | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table customer_details drop primary key;
Query OK, 4 rows affected (0.08 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc customer_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | varchar(10) | NO   |     | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| city      | varchar(20) | NO   |     | NULL    |       |
| pincode   | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> create table department(dept_id varchar(30) primary key, dept_name varchar(30) not null);
Query OK, 0 rows affected (0.07 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | varchar(30) | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> create table employee(emp_i varchar(30) primary key, emp_name varchar(30) not null, dept_id varchar(30), foreign key(dept_id) references department(dept_id));
Query OK, 0 rows affected (0.08 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | varchar(30) | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_i    | varchar(30) | NO   | PRI | NULL    |       |
| emp_name | varchar(30) | NO   |     | NULL    |       |
| dept_id  | varchar(30) | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into department values('D101', 'HR'), ('D102', 'IT');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
| D101    | HR        |
| D102    | IT        |
+---------+-----------+
2 rows in set (0.00 sec)

mysql> insert into employee values('E101', 'Tanvi', 'D102'),('E102', 'Nisha', 'D102'),('E103', 'Mansi', 'D101');
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------+----------+---------+
| emp_i | emp_name | dept_id |
+-------+----------+---------+
| E101  | Tanvi    | D102    |
| E102  | Nisha    | D102    |
| E103  | Mansi    | D101    |
+-------+----------+---------+
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

mysql> select * from customer_details limit 2;
+---------+-----------+-------+---------+
| cust_id | full_name | city  | pincode |
+---------+-----------+-------+---------+
| 101     | Tanvi     | Thane |  400606 |
| 102     | Nisha     | Thane |  400606 |
+---------+-----------+-------+---------+
2 rows in set (0.00 sec)

mysql> create table student(stu_id varchar(10) primary key, name varchar(20) not null, age int(3) not null, address varchar(30));
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| stu_id  | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
| address | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student values('101', 'Riya', 21, 'Thane'),('102', 'Sneha', 20, 'Vikroli'),('103', 'Rohit', 21, 'Diva'),('104', 'Tushar', 21, 'Mulund');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+--------+--------+-----+---------+
| stu_id | name   | age | address |
+--------+--------+-----+---------+
| 101    | Riya   |  21 | Thane   |
| 102    | Sneha  |  20 | Vikroli |
| 103    | Rohit  |  21 | Diva    |
| 104    | Tushar |  21 | Mulund  |
+--------+--------+-----+---------+
4 rows in set (0.00 sec)

mysql> truncate table student;
Query OK, 0 rows affected (0.06 sec)

mysql> select * from student;
Empty set (0.00 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| stu_id  | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
| address | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student values('101', 'Riya', 21, 'Thane'),('102', 'Sneha', 20, 'Vikroli'),('103', 'Rohit', 21, 'Diva'),('104', 'Tushar', 21, 'Mulund');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+--------+--------+-----+---------+
| stu_id | name   | age | address |
+--------+--------+-----+---------+
| 101    | Riya   |  21 | Thane   |
| 102    | Sneha  |  20 | Vikroli |
| 103    | Rohit  |  21 | Diva    |
| 104    | Tushar |  21 | Mulund  |
+--------+--------+-----+---------+
4 rows in set (0.00 sec)

mysql> select * from student where name like 's%';
+--------+-------+-----+---------+
| stu_id | name  | age | address |
+--------+-------+-----+---------+
| 102    | Sneha |  20 | Vikroli |
+--------+-------+-----+---------+
1 row in set (0.01 sec)

mysql> select * from student where address like 'm%';
+--------+--------+-----+---------+
| stu_id | name   | age | address |
+--------+--------+-----+---------+
| 104    | Tushar |  21 | Mulund  |
+--------+--------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like '%li';
+--------+-------+-----+---------+
| stu_id | name  | age | address |
+--------+-------+-----+---------+
| 102    | Sneha |  20 | Vikroli |
+--------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like '%iy%';
Empty set (0.00 sec)

mysql> select * from student where name like '%iy%';
+--------+------+-----+---------+
| stu_id | name | age | address |
+--------+------+-----+---------+
| 101    | Riya |  21 | Thane   |
+--------+------+-----+---------+
1 row in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.02 sec)

mysql> drop database college;
Query OK, 1 row affected (0.03 sec)

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
5 rows in set (0.00 sec)