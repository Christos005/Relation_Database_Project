Drop database if exists pizzeria3;
create database pizzeria3;
use pizzeria3;

create table pizzeria_store (
registry     varchar(10),
street_address  varchar(20) not null,
city         varchar(20) not null,
state        varchar(20) not null,
zip          varchar(20) not null,
constraint pizzeria_store_PK primary key (registry)
);

create table employee (
ssn          varchar(9),
fname        varchar(20) not null,
lname        varchar(20) not null,
position     varchar(20) not null,
gender       varchar(1),
salary       float not null,
constraint employee_PK primary key (ssn)
);

create table occupies (
store       varchar(10),
ssn         varchar(9),
constraint occupies_PK primary key (store,ssn),
constraint occupies_FK1 foreign key (store) references pizzeria_store(registry),
constraint occupies_FK2 foreign key (ssn) references employee(ssn)
);

create table customer (
email       varchar(50),
fname       varchar(20) not null,
lname       varchar(20) not null,
creditcard  varchar(16) not null,
constraint customer_PK primary key (email)
);

create table orders (
order_number varchar(20),
date         date not null,
store        varchar(10) not null,
cust         varchar(50) not null, 
constraint orders_PK primary key (order_number),
constraint orders_FK1 foreign key (store) references pizzeria_store(registry),
constraint orders_FK2 foreign key (cust) references customer(email)
);

create table item (
item        varchar(50),
order_number   varchar(20),
qty         int not null,
price       float not null,
constraint item_PK primary key (item, order_number),
constraint item_FK1 foreign key (order_number) references orders(order_number)
);