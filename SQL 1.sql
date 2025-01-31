CREATE DATABASE departments;
USE departments;
CREATE TABLE departments_info(id int,departments_name varchar(20) unique,price int,departments_type varchar(20),departments_code int primary key);
select *from departments_info;
INSERT INTO departments_info values(1, 'Human Resources', 2, 'New York', 500000);
INSERT INTO departments_info values(2, 'Finance', 3, 'Chicago', 700000);
INSERT INTO departments_info values(3, 'IT', 4, 'San Francisco', 800000);
INSERT INTO departments_info values(4, 'Marketing', 5, 'Los Angeles', 600000);
INSERT INTO departments_info values(5, 'Sales', 6, 'Boston', 750000);
INSERT INTO departments_info values(6, 'Legal', 7, 'Washington', 550000);
INSERT INTO departments_info values(7, 'Operations', 8, 'Dallas', 720000);
INSERT INTO departments_info values(8, 'Product', 9, 'Austin', 670000);
INSERT INTO departments_info values(9, 'Engineering', 1, 'Denver', 810000);
INSERT INTO departments_info values(10, 'Customer Support', 1, 'Seattle', 490000);
ALTER TABLE departments_info modify column id int NOT null;
alter table departments_info add constraint price_check check(price<100);

CREATE TABLE departments_company(id int unique,company_name varchar(20),toy_code int,company_location varchar(30),company_profit bigint,
foreign key(departments_code) references departments_info(departments_code));
INSERT INTO departments_company values(1,'Hrashitha toy shop',2002,'bangalore',500000);
INSERT INTO departments_company values(2,'jayashree toy shop',2009,'Mangalore',700000);
INSERT INTO departments_company values(3,'Adu kale',2001,'bangalore',800000);
INSERT INTO departments_company values(4,'Toy shop',2002,'udupi',200000);
INSERT INTO departments_company values(5,'Attadha mane',2010,'hassan',600000);
INSERT INTO departments_company values(6,'Lakshmi toy shop',2003,'shivamoga',750000);
INSERT INTO departments_company values(7,'Santhu toy shop',2001,'bangalore',550000);
INSERT INTO departments_company values(8,'City toy shop',2007,'mysore',670000);
INSERT INTO departments_company values(9,'Bangarpet toy shop',2006,'hubli',200000);
INSERT INTO departments_company values(10,'Toy show',2005,'raichur',1000000);

SELECT * FROM departments_company where company_name between 'h' and 'a';
SELECT * FROM departments_company where company_name between 'j' and 'e';
SELECT * FROM departments_company where id between 1 and 10;
SELECT * FROM departments_company where company_name like 'h%';
SELECT * FROM departments_company where company_location like '%e';
SELECT * FROM departments_info order by id;
SELECT * FROM departments_info order by id desc;
SELECT LOWER(departments_code) as departments_lower from departments_info;
SELECT UPPER(departments_name) as departments_upper from departments_info;
SELECT CONCAT(company_name,company_location) from departments_company;
SELECT LENGTH(company_profit) as leng, company_profit from departments_company;
CREATE INDEX d_name_indx on departments_info(departments_name);
