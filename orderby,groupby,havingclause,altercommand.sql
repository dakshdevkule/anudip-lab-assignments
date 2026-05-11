
mysql> desc orders;
ERROR 1046 (3D000): No database selected
mysql> use ecommerce;
Database changed

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| product             |
+---------------------+
3 rows in set (0.04 sec)

mysql> create database aggregation;
Query OK, 1 row affected (0.02 sec)

mysql> use aggregation;
Database changed

mysql> create table orders(order_id varchar(10) not null primary key,product_name varchar(20) not null,category varchar (20) not null,selling_price double(12,2) not null,original_price double(12,2) not null,stock int not null);
Query OK, 0 rows affected, 2 warnings (0.10 sec)

mysql> create table product(product_id varchar(10) not null primary key,product_name varchar(20) not null,category varchar (20) not null,selling_price double(12,2) not null,original_price double(12,2) not null,stock int not null);
Query OK, 0 rows affected, 2 warnings (0.04 sec)

mysql> desc product;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | varchar(10)  | NO   | PRI | NULL    |       |
| product_name   | varchar(20)  | NO   |     | NULL    |       |
| category       | varchar(20)  | NO   |     | NULL    |       |
| selling_price  | double(12,2) | NO   |     | NULL    |       |
| original_price | double(12,2) | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

mysql> insert into product values('p101','chair','furniture',6000,5000,12);
Query OK, 1 row affected (0.02 sec)

mysql> insert into product values('p102','table','furniture',7000,7500,14);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('p103','mobile','electronics',5000,8500,16), ('p104','laptop','electronics',9000,9500,17),('p105','jeans','clothing',3000,3500,16);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from product;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| p101       | chair        | furniture   |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture   |       7000.00 |        7500.00 |    14 |
| p103       | mobile       | electronics |       5000.00 |        8500.00 |    16 |
| p104       | laptop       | electronics |       9000.00 |        9500.00 |    17 |
| p105       | jeans        | clothing    |       3000.00 |        3500.00 |    16 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.01 sec)

mysql> select sum(selling_price) from product;
+--------------------+
| sum(selling_price) |
+--------------------+
|           30000.00 |
+--------------------+
1 row in set (0.01 sec)

mysql> select avg(selling_price) from product;
+--------------------+
| avg(selling_price) |
+--------------------+
|        6000.000000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select count(*) from product;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.03 sec)

mysql> select max(stock) from product;
+------------+
| max(stock) |
+------------+
|         17 |
+------------+
1 row in set (0.00 sec)

mysql> select min(stock) from product;
+------------+
| min(stock) |
+------------+
|         12 |
+------------+
1 row in set (0.00 sec)

mysql> select * from product order by stock;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| p101       | chair        | furniture   |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture   |       7000.00 |        7500.00 |    14 |
| p103       | mobile       | electronics |       5000.00 |        8500.00 |    16 |
| p105       | jeans        | clothing    |       3000.00 |        3500.00 |    16 |
| p104       | laptop       | electronics |       9000.00 |        9500.00 |    17 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from product order by stock desc;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| p104       | laptop       | electronics |       9000.00 |        9500.00 |    17 |
| p103       | mobile       | electronics |       5000.00 |        8500.00 |    16 |
| p105       | jeans        | clothing    |       3000.00 |        3500.00 |    16 |
| p102       | table        | furniture   |       7000.00 |        7500.00 |    14 |
| p101       | chair        | furniture   |       6000.00 |        5000.00 |    12 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from product order by stock desc limit 3;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| p104       | laptop       | electronics |       9000.00 |        9500.00 |    17 |
| p103       | mobile       | electronics |       5000.00 |        8500.00 |    16 |
| p105       | jeans        | clothing    |       3000.00 |        3500.00 |    16 |
+------------+--------------+-------------+---------------+----------------+-------+
3 rows in set (0.00 sec)

mysql> create table employee(employee_id varchar(10) not null primary key,employee_name varchar(20) not null,department varchar(20) not null,salary int not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee values('e101','daksh','HR',50000),('e102','om','trainner',40000),('e103','laksh','HR',4500),('e104','simona','IT',5000),('e105','serena','IT',3000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| e101        | daksh         | HR         |  50000 |
| e102        | om            | trainner   |  40000 |
| e103        | laksh         | HR         |   4500 |
| e104        | simona        | IT         |   5000 |
| e105        | serena        | IT         |   3000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total_employee from employee group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| trainner   |              1 |
| IT         |              2 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department,sum(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        54500 |
| trainner   |        40000 |
| IT         |         8000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department,avg(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |   27250.0000 |
| trainner   |   40000.0000 |
| IT         |    4000.0000 |
+------------+--------------+
3 rows in set (0.01 sec)

mysql> select department,avg(salary) as average_salary from employee group by department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     27250.0000 |
| trainner   |     40000.0000 |
| IT         |      4000.0000 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department,salary,count(*) from employee group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |  50000 |        1 |
| trainner   |  40000 |        1 |
| HR         |   4500 |        1 |
| IT         |   5000 |        1 |
| IT         |   3000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| e101        | daksh         | HR         |  50000 |
| e102        | om            | trainner   |  40000 |
| e103        | laksh         | HR         |   4500 |
| e104        | simona        | IT         |   5000 |
| e105        | serena        | IT         |   3000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee group by department having count(*) >1;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
+------------+----------------+
2 rows in set (0.01 sec)

mysql> select department, sum(salary) as total_salary from employee group by department having sum(salary) >8000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        54500 |
| trainner   |        40000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee group by department having sum(salary) >2000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        54500 |
| trainner   |        40000 |
| IT         |         8000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, avg(salary) as average_salary from employee group by department having avg(salary) >5000;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     27250.0000 |
| trainner   |     40000.0000 |
+------------+----------------+
2 rows in set (0.00 sec)
