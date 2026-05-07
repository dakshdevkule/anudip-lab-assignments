mysql> use databases

Database changed
mysql> use ecommerce ;
Database changed
mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | YES  |     | NULL    |       |
| email        | varchar(20)  | YES  |     | NULL    |       |
| address      | varchar(100) | YES  |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.008 sec)

mysql> select * from customer
    -> ;
Empty set (0.003 sec)

mysql> insert into customer (Customer_id, name, city, email, address, phone_number, pincode)values('C101', 'Abdul', 'Mumbra', 'mannan23r4@gmail.com', 'MM VALLEY','9372621064', 400612 );
Query OK, 1 row affected (0.014 sec)

mysql> select * from customer
    -> ;
+-------------+-------+--------+----------------------+-----------+--------------+---------+
| Customer_id | name  | city   | email                | address   | phone_number | pincode |
+-------------+-------+--------+----------------------+-----------+--------------+---------+
| C101        | Abdul | Mumbra | mannan23r4@gmail.com | MM VALLEY | 9372621064   |  400612 |
+-------------+-------+--------+----------------------+-----------+--------------+---------+
1 row in set (0.007 sec)

mysql> select Customer_id,name from customer;
+-------------+-------+
| Customer_id | name  |
+-------------+-------+
| C101        | Abdul |
+-------------+-------+
1 row in set (0.006 sec)

mysql> insert into customer values ('C102','Faisal','Thane','gzoneonly@gmail.com', 'Tanwar', '901922293', '400612');
Query OK, 1 row affected (0.020 sec)

mysql> insert into customer values ('C103','mann', 'haha', 'gm@gmail.com','asaaaa', '2223222', '23222' ),('C104', 'sasss', 'pune','pune@gmail.com','universe','772837','82662' );
Query OK, 2 rows affected (0.004 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+--------+--------+----------------------+-----------+--------------+---------+
| Customer_id | name   | city   | email                | address   | phone_number | pincode |
+-------------+--------+--------+----------------------+-----------+--------------+---------+
| C101        | Abdul  | Mumbra | mannan23r4@gmail.com | MM VALLEY | 9372621064   |  400612 |
| C102        | Faisal | Thane  | gzoneonly@gmail.com  | Tanwar    | 901922293    |  400612 |
| C103        | mann   | haha   | gm@gmail.com         | asaaaa    | 2223222      |   23222 |
| C104        | sasss  | pune   | pune@gmail.com       | universe  | 772837       |   82662 |
+-------------+--------+--------+----------------------+-----------+--------------+---------+
4 rows in set (0.001 sec)

mysql> desc customer
    -> ;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | YES  |     | NULL    |       |
| email        | varchar(20)  | YES  |     | NULL    |       |
| address      | varchar(100) | YES  |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.038 sec)

mysql> alter table customer modify Customer_id varchar(10)  not null;
Query OK, 0 rows affected (0.023 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer
    -> ;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | YES  |     | NULL    |       |
| email        | varchar(20)  | YES  |     | NULL    |       |
| address      | varchar(100) | YES  |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.002 sec)

mysql> alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.016 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | YES  |     | NULL    |       |
| email        | varchar(20)  | YES  |     | NULL    |       |
| address      | varchar(100) | YES  |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
8 rows in set (0.003 sec)

mysql> alter table customer add state varchar(10) not null, add  country varchar(10) not null;
Query OK, 0 rows affected (0.026 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | YES  |     | NULL    |       |
| email        | varchar(20)  | YES  |     | NULL    |       |
| address      | varchar(100) | YES  |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
| state        | varchar(10)  | NO   |     | NULL    |       |
| country      | varchar(10)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.002 sec)

mysql> alter table customer change column name Customer_name varchar(10) not null;
Query OK, 0 rows affected (0.019 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| Customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | YES  |     | NULL    |       |
| email         | varchar(20)  | YES  |     | NULL    |       |
| address       | varchar(100) | YES  |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.003 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.004 sec)

mysql> create table demo(id varchar(5) not null primary key, name varchar(20) not null);
Query OK, 0 rows affected (0.010 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.003 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.019 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.002 sec)

mysql> alter table demo add primary key (id);
Query OK, 0 rows affected (0.025 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.003 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| information_schema      |
| mydb                    |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| sys                     |
+-------------------------+
7 rows in set (0.061 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.009 sec)

mysql> use ecommerce;
Database changed
mysql> select * from customer;
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
| Customer_id | Customer_name | city   | email                | address   | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
| C101        | Abdul         | Mumbra | mannan23r4@gmail.com | MM VALLEY | 9372621064   |  400612 |       0 |       |         |
| C102        | Faisal        | Thane  | gzoneonly@gmail.com  | Tanwar    | 901922293    |  400612 |       0 |       |         |
| C103        | mann          | haha   | gm@gmail.com         | asaaaa    | 2223222      |   23222 |       0 |       |         |
| C104        | sasss         | pune   | pune@gmail.com       | universe  | 772837       |   82662 |       0 |       |         |
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
4 rows in set (0.004 sec)

mysql> delete from customer where Customer_id = 'C103';
Query OK, 1 row affected (0.020 sec)

mysql> select * from customer;
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
| Customer_id | Customer_name | city   | email                | address   | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
| C101        | Abdul         | Mumbra | mannan23r4@gmail.com | MM VALLEY | 9372621064   |  400612 |       0 |       |         |
| C102        | Faisal        | Thane  | gzoneonly@gmail.com  | Tanwar    | 901922293    |  400612 |       0 |       |         |
| C104        | sasss         | pune   | pune@gmail.com       | universe  | 772837       |   82662 |       0 |       |         |
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
3 rows in set (0.001 sec)

mysql> select * from demo;
Empty set (0.001 sec)

mysql> select * from customer;
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
| Customer_id | Customer_name | city   | email                | address   | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
| C101        | Abdul         | Mumbra | mannan23r4@gmail.com | MM VALLEY | 9372621064   |  400612 |       0 |       |         |
| C102        | Faisal        | Thane  | gzoneonly@gmail.com  | Tanwar    | 901922293    |  400612 |       0 |       |         |
| C104        | sasss         | pune   | pune@gmail.com       | universe  | 772837       |   82662 |       0 |       |         |
+-------------+---------------+--------+----------------------+-----------+--------------+---------+---------+-------+---------+
3 rows in set (0.001 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.031 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.007 sec)

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| Customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | YES  |     | NULL    |       |
| email         | varchar(20)  | YES  |     | NULL    |       |
| address       | varchar(100) | YES  |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.003 sec)

mysql> insert into demo values('101','Ansari');
Query OK, 1 row affected (0.004 sec)

mysql> select * from demo;
+-----+--------+
| id  | name   |
+-----+--------+
| 101 | Ansari |
+-----+--------+
1 row in set (0.000 sec)

mysql> truncate table demo;
Query OK, 0 rows affected (0.014 sec)

mysql> select * from demo;
Empty set (0.004 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.003 sec)

mysql> drop table orders;
Query OK, 0 rows affected (0.013 sec)

mysql> desc orders;
ERROR 1146 (42S02): Table 'ecommerce.orders' doesn't exist
mysql>