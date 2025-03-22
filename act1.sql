--In this activity students will be working on all the basic commands taught during the lessons like creating a table, manipulating, sorting & filtering using SQL to analyze the data

CREATE TABLE if not EXISTS  salesman(
salesman_id  text ,
name text,
city text,
commission real );


insert into salesman(salesman_id ,name,city,commission)
VALUES (100,'ankur shah','delhi',0.25),
(101,'amit gupta ','agra',0.55),
(102,'ankita jain','hyderabad',0.75),
(103,'ritwik arora ','pune',0.20),
(104,'harman singh ','mumbai',0.15),
(105,'tanush malhotra','benglore',0.19);


select * from salesman 


create table if not exists customer(
customer_id text,
customer_name text PRIMARY KEY,
city text ,
grade integer,
salesman_id text,
FOREIGN key (salesman_id) REFERENCES salesman(salesman_id));



insert into customer (customer_id,customer_name, city,grade, salesman_id) 
VALUES
(2001,'nakul arora','pune',200,102),
(2002,'reena arya ','shadara',300,101),
(2003,'amit bansal','kerela',200,105),
(2004,'advik khandelwal','goa',200,104),
(2005,'diksha singh','meerut',200,103);


select * from customer

create table IF not exists orders(

ord_no text  PRIMARY key ,
ord_date text,
customer_id text,
salesman_id text,
foreign key (customer_id) references customer(customer_id),
foreign key (salesman_id) REFERENCES salesman(salesman_id));


INSERT into orders (ord_no,ord_date, customer_id,salesman_id)
VALUES
('3000','2012-10-05','2001','101'),
('3001','2012-11-05','2003','105'),
('3002','2012-12-05','2004','103'),
('3003','2012-10-08','2005','104'),
('3004','2012-10-01','2002','102');


SELECT * from orders


SELECT * from customer JOIN salesman ON customer.city=salesman.city

SELECT customer_name,customer.city,customer.salesman_id from customer JOIN salesman on customer.salesman_id=salesman.salesman_id
GROUP by customer_name,customer.city,customer.salesman_id 











