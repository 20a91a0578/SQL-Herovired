 create table WorkerTable(
 Worker_ID int not null primary key,
 First_Name varchar(30) not null,
 Last_Name varchar(30) not null,
 Salary int not null ,
 Joining_Date date not null,
 Department varchar(30) not null
 )

 insert into WorkerTable values (001,"Monika","Arora",100000,"2014-02-20 ","HR");
 insert into WorkerTable values (002,"Niharika","Verma",80000,"2014-06-11 ","Admin");
 insert into WorkerTable values (003,"Vishal","Singhal",300000,"2014-02-20 ","HR");
 insert into WorkerTable values (004,"Amitabh","Singh",500000,"2014-02-20 ","Admin");
 insert into WorkerTable values (005,"Vivek","Bhati",500000,"2014-06-11 ","Admin");
 insert into WorkerTable values (006,"Vipul","Diwan",200000,"2014-06-11 ","Account");
 insert into WorkerTable values (007,"Satish","Kumar",75000,"2014-01-20 ","Account");
 insert into WorkerTable values (008,"Geetika","Chauhan",90000,"2014-04-11 ","Admin");
 
 --query 1
 SELECT First_Name AS  WORKER_NAME FROM WorkerTable;

 --query 2
 Select instr(First_Name, BINARY'a') from workertable where FIRST_NAME = 'Amitabh';

 --query 3
 SELECT replace(First_Name, 'a', 'A') from workertable;

 --query 4
 select * from WorkerTable order by First_Name ASC;

 --query 5
 select * from WorkerTable order by First_Name ASC , Department DESC ;

 --query 6
 select * from WorkerTable where First_Name in ( 'Vipul','Satish');

 --query 7
 Select * from workertable where DEPARTMENT like 'Admin%';
 
  --query 8
select * from workertable where  First_Name like '%a%' ;

 --query 9 
 select * from  workertable where Salary  between 100000 and 500000;

 --query 10
 select * from workertable where First_Name like '___h';

 --query 11
 Select * from workertable where Joining_Date like '2014-02%';

 --query 12
 SELECT  First_Name , Salary From workertable WHERE Salary between 50000 and 100000;
 
 
 
 


create table Salesman(
salesman_id number(4)  primary key,
name varchar2(20),
city varchar2(20),
commisssion float );

insert into Salesman values(5001,'James Hoog','NewYork',0.15);

insert into Salesman values(5002,'Nail Knite','Paris',0.13);

insert into Salesman values(5005,'PitAlex','London',0.11);

insert into Salesman values(5006,'McLyon','Paris',0.14);

insert into Salesman values(5007,'Paul  Adam','Rome',0.13);

insert into Salesman values(5003,'Lauson Hen','SanJose',0.12);

create table Customer(
    Customer_id number(4),
    cust_name varchar2(20),
    city varchar2(20),
    grade number(3),
    salesman_id number(4));


insert into Customer values(3002,'Nick Rimando','New York',100,5001);

insert into Customer values(3007,'Brad Davis','New York',200,5001);

insert into Customer values(3005,'Graham Zusi','California',200,5002); 

insert into Customer values(3008,'Julian Green','London',300,5002);   

insert into Customer values(3004,'Fabian Johnson','Paris',300,5006);

insert into Customer values(3009,'Geoff  Cameron','Berlin',100,5003);

insert into Customer values(3003,'Jozy Altidor','Moscow',200,5007);

insert into Customer values(3001,'Brad  Guzan','London',null,5005);

--query 13
select name,cust_name,salesman.city from salesman,customer where salesman.city=customer.city;

--query 14
select cust_name,customer.city,name,commission from customer,salesman where salesman.salesman_id=customer.salesman_id;

--query 15
select cust_name,customer.city,name,commission from salesman,customer where commission>.12 and salesman.salesman_id=customer.salesman_id;
