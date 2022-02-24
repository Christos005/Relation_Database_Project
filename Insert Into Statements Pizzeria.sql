--Pizzeria Table----

INSERT INTO Pizzeria_Store
VALUES ('456309863', '9235 Oxford Circle', 'Philadelphia', 'PA', '18734');

INSERT INTO Pizzeria_Store
VALUES ('143894760', '873 Broad Street', 'Newark', 'NJ', '70200');

--Employees Table--

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('127970976', 'Chris', 'Jones', 'Manager', 'M', '5000');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('167860091', 'Roberto', 'Rodriguez', 'Cook', 'M', '2250');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('156080984', 'Lisa', 'Suarez', 'Counter Girl', 'F', '1250');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('143989865', 'Carlos', 'O Brian', 'Driver', 'M', '1870');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('245090943', 'Qui', 'Yaung', 'Manager', 'M', '5000');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('197018716', 'Janet', 'Princeton', 'Counter Girl', 'F', '1250');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('127930004', 'Kevin', 'Xavier', 'Cook', 'M', '2250');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('196720981', 'Ron', 'Hollet', 'Driver', 'M', '1870');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('167980992', 'Cisco', 'Ramon', 'Cook', 'M', '2250');

INSERT INTO Employee (SSN, fname, lname, position, gender, salary)
VALUES ('134097762', 'Ryan', 'Konor', 'Cook', 'M', '2250');

--Customer Table--

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('kevin_Zack@gmail.com', 'Kevin', 'Zachner', '************2431');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('fernandezJoe@yahoo.com', 'Joe', 'Fernandez', '************7641');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('Frankie_SS@hotmail.com', 'Frank', 'Sinatra', '************8971');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('Tyr_Jone009@outlook.com', 'Tyrone', 'Jones', '************1209');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('MarMc1986@hotmail.com', 'Maria', 'Mcarthy', '************3452');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('Ian345_O@yahoo.com', 'Ian', 'Ornelo', '************0094');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('paul_N98@gmail.com', 'Paul', 'Neit', '************3459');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('kimb_S@gmail.com', 'Stella', 'Kimber', '************7765');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('Dave_M124@yahoo.com', 'David', 'Moralles', '************8836');

INSERT INTO Customer (email, fname, lname, creditcard)
VALUES ('FalcDom@gmail.com', 'Dom', 'Falcone', '************5574');

--Orders tables--

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('kevin_Zack@gmail.com', '4', '456309863', '2017-05-12');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('Frankie_SS@hotmail.com', '10', '143894760', '2017-08-11');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('Ian345_O@yahoo.com', '57', '456309863', '2017-10-15');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('FalcDom@gmail.com', '198', '143894760', '2017-08-23');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('paul_N98@gmail.com', '93', '143894760', '2017-09-05');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('Dave_M124@yahoo.com', '43', '456309863', '2016-11-30');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('fernandezJoe@yahoo.com', '78', '143894760', '2016-09-17');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('MarMc1986@hotmail.com', '62', '456309863', '2015-05-05');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('Tyr_Jone009@outlook.com', '34', '143894760', '2017-02-28');

INSERT INTO Orders (Cust, order_number, Store, Date)
VALUES ('kimb_S@gmail.com', '82', '456309863', '2017-07-21');

--occupies table--

INSERT INTO occupies (store, ssn) 
VALUES ('456309863', '127970976');

INSERT INTO occupies (store, ssn) 
VALUES ('456309863', '167860091');

INSERT INTO occupies (store, ssn) 
VALUES ('456309863', '156080984');

INSERT INTO occupies (store, ssn) 
VALUES ('456309863', '143989865');

INSERT INTO occupies (store, ssn) 
VALUES ('456309863', '134097762');

INSERT INTO occupies (store, ssn) 
VALUES ('143894760', '245090943');

INSERT INTO occupies (store, ssn) 
VALUES ('143894760', '197018716');

INSERT INTO occupies (store, ssn) 
VALUES ('143894760', '127930004');

INSERT INTO occupies (store, ssn) 
VALUES ('143894760', '196720981');

INSERT INTO occupies (store, ssn) 
VALUES ('143894760', '167980992');

--item table--

INSERT INTO item 
VALUES ('Plain Pizza','4',2,14.99);

INSERT INTO item  
VALUES ('Stromboli  #10','10',1,18.42);

INSERT INTO item  
VALUES ('Spaggeti with Veal','57',2,18.82);

INSERT INTO item  
VALUES ('Greek Salad','198',4,21.74);

INSERT INTO item  
VALUES ('Fried Ravioli','93',3,15.12);

INSERT INTO item  
VALUES ('Slice and a Can Special','43',7,18.47);

INSERT INTO item 
VALUES ('Cheesesteak','78',10,32.98);

INSERT INTO item  
VALUES ('Mega Fries','62',6,50.32);

INSERT INTO item  
VALUES ('Calzone','34',1,9.99);

INSERT INTO item  
VALUES ('Wing Platter','82',8,69.92);


