
CREATE TABLE orders_bckup AS
SELECT * 
FROM orders 
LIMIT 4;

INSERT INTO orders_bckup VALUES ('30', '2017-07-22', '143894760', 'Frankie_SS@hotmail.com');
INSERT INTO orders_bckup VALUES ('18', '2016-02-28', '456309863', 'Tyr_Jone009@outlook.com');

#1
SELECT * FROM orders
UNION
SELECT * FROM orders_bckup;

#2
SELECT * 
FROM orders
WHERE orders.cust IN (SELECT cust FROM orders_bckup);

#3
SELECT DISTINCT orders_bckup.* FROM orders_bckup
LEFT JOIN orders ON orders.order_number = orders_bckup.order_number
where orders.order_number IS NULL;

SELECT DISTINCT orders.* FROM orders
LEFT JOIN orders_bckup ON orders.order_number = orders_bckup.order_number
WHERE orders_bckup.order_number IS NULL;

#4
SELECT orders.order_number, item
FROM orders, item
WHERE orders.order_number = item.order_number;

#5
ALTER TABLE orders
ADD COLUMN order_status VARCHAR(1);

ALTER TABLE orders 
MODIFY order_status 
BOOLEAN;

#6
UPDATE orders
SET DATE = '2017-12-11'
WHERE order_number = '10';

UPDATE orders
SET store = '143894760'
WHERE order_number = '4';

#7
INSERT INTO orders_bckup VALUES ('30', '2017-07-22', '143894760', 'Frankie_SS@hotmail.com');
INSERT INTO orders_bckup VALUES ('18', '2016-02-28', '456309863', 'Tyr_Jone009@outlook.com');

DELETE FROM orders
WHERE order_number = '30';

DELETE FROM orders
WHERE order_number = '18';

#8
INSERT INTO orders_bckup VALUES ('345', '2017-07-28', '143894760', 'Frankie_SS@hotmail.com');
INSERT INTO orders_bckup VALUES ('467', '2017-06-28', '456309863', 'Tyr_Jone009@outlook.com');


/* Procedure to describe table and list all tuples */
delimiter //

CREATE PROCEDURE structure_list()

BEGIN
    DESCRIBE orders;
    SELECT * FROM orders;
END //

delimiter ;

/* create a backup table */
CREATE TABLE orderbkup AS (SELECT * FROM orders LIMIT 0);

/* trigger for update */
delimiter //
CREATE TRIGGER update_trigger
BEFORE UPDATE ON orders
FOR EACH ROW
BEGIN 
   INSERT INTO bkup
   VALUES (OLD.order_number, OLD.date, OLD.store, OLD.cust);
END //
delimiter ;

/* trigger for delete */
/* since we cant delete a parent row let's insert new row */
/* then delete it and see if it is in the bkup table */
/* also please note that this insert statement below just works for */
/* original table without adding new column (from the individual part)*/


INSERT INTO orders VALUES('007','2000-12-12','trigger','Bruce123@hotmail.com', '1');

delimiter //
CREATE TRIGGER delete_trigger 
BEFORE DELETE ON orders
FOR EACH ROW
BEGIN 
   INSERT INTO bkup
   VALUES (OLD.order_number, OLD.date, OLD.store, OLD.cust);
END //
delimiter ;
/* now we can test deleting the newly added data test_trigger */



