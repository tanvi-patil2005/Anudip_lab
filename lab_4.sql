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
5 rows in set (0.01 sec)

mysql> create database tanvi;
Query OK, 1 row affected (0.04 sec)

mysql> use tanvi;
Database changed
mysql> create table employee(id varchar(10) primary key, dept_name varchar(20) not null, salary int(10) not null);
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> insert into employee values('E101', 'HR', 30000), ('E102', 'HR', 35000),('E103', 'IT', 20000), ('E104', 'IT', 15000);
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------+-----------+--------+
| id   | dept_name | salary |
+------+-----------+--------+
| E101 | HR        |  30000 |
| E102 | HR        |  35000 |
| E103 | IT        |  20000 |
| E104 | IT        |  15000 |
+------+-----------+--------+
4 rows in set (0.00 sec)

mysql> select dept_name,avg(salary) as avg_salary from employee group by dept_name;
+-----------+------------+
| dept_name | avg_salary |
+-----------+------------+
| HR        | 32500.0000 |
| IT        | 17500.0000 |
+-----------+------------+
2 rows in set (0.02 sec)

mysql> select dept_name, count(*) as total_employee from employee group by dept_name;
+-----------+----------------+
| dept_name | total_employee |
+-----------+----------------+
| HR        |              2 |
| IT        |              2 |
+-----------+----------------+
2 rows in set (0.02 sec)

mysql> select dept_name,sum(salary) as total_salary from employee group by dept_name;
+-----------+--------------+
| dept_name | total_salary |
+-----------+--------------+
| HR        |        65000 |
| IT        |        35000 |
+-----------+--------------+
2 rows in set (0.00 sec)

mysql> select dept_name,max(salary) as Highest_salary from employee group by dept_name;
+-----------+----------------+
| dept_name | Highest_salary |
+-----------+----------------+
| HR        |          35000 |
| IT        |          20000 |
+-----------+----------------+
2 rows in set (0.00 sec)

mysql> select dept_name,avg(salary) as avg_salary from employee group by dept_name;
+-----------+------------+
| dept_name | avg_salary |
+-----------+------------+
| HR        | 32500.0000 |
| IT        | 17500.0000 |
+-----------+------------+
2 rows in set (0.00 sec)

mysql> select dept_name,avg(salary) as avg_salary from employee group by dept_name having avg(salary)>10000;
+-----------+------------+
| dept_name | avg_salary |
+-----------+------------+
| HR        | 32500.0000 |
| IT        | 17500.0000 |
+-----------+------------+
2 rows in set (0.00 sec)

mysql> select dept_name,avg(salary) as avg_salary from employee group by dept_name having avg(salary)>30000;
+-----------+------------+
| dept_name | avg_salary |
+-----------+------------+
| HR        | 32500.0000 |
+-----------+------------+
1 row in set (0.00 sec)

mysql> select dept_name, count(*) as total_employee from employee group by dept_name having count(*)>=2;
+-----------+----------------+
| dept_name | total_employee |
+-----------+----------------+
| HR        |              2 |
| IT        |              2 |
+-----------+----------------+
2 rows in set (0.00 sec)

mysql> select dept_name,avg(salary) as avg_salary from employee group by dept_name having avg(salary)<30000;
+-----------+------------+
| dept_name | avg_salary |
+-----------+------------+
| IT        | 17500.0000 |
+-----------+------------+
1 row in set (0.00 sec)

mysql> select * from employee;
+------+-----------+--------+
| id   | dept_name | salary |
+------+-----------+--------+
| E101 | HR        |  30000 |
| E102 | HR        |  35000 |
| E103 | IT        |  20000 |
| E104 | IT        |  15000 |
+------+-----------+--------+
4 rows in set (0.00 sec)

mysql> select dept_name,min(salary) as lowest_salary from employee group by dept_name having min(salary)<20000;
+-----------+---------------+
| dept_name | lowest_salary |
+-----------+---------------+
| IT        |         15000 |
+-----------+---------------+
1 row in set (0.00 sec)

mysql> select * from employee;
+------+-----------+--------+
| id   | dept_name | salary |
+------+-----------+--------+
| E101 | HR        |  30000 |
| E102 | HR        |  35000 |
| E103 | IT        |  20000 |
| E104 | IT        |  15000 |
+------+-----------+--------+
4 rows in set (0.03 sec)

mysql> select e.id, e.dept_name, e.salary from employee as e;
+------+-----------+--------+
| id   | dept_name | salary |
+------+-----------+--------+
| E101 | HR        |  30000 |
| E102 | HR        |  35000 |
| E103 | IT        |  20000 |
| E104 | IT        |  15000 |
+------+-----------+--------+
4 rows in set (0.02 sec)