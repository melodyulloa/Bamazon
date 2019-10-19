DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;
CREATE TABLE products (
   item_id INT(4) not null ,
   product_name VARCHAR(100) not null,
   department_name VARCHAR(100) not null,
   price DECIMAL(10,2) not null,
   stock_quantity INT (20) not null,
       PRIMARY KEY (item_id)
);


-- Creates new rows containing data in all named columns --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1000, "Magenta", "Paint", 16.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1001, "Blue", "Paint", 18.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
 VALUES (1002, "Green", "Paint", 17.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1003, "Yellow", "Paint", 20.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1004, "Olive", "Paint", 25.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1005, "SkyBlue", "Paint", 19.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1006, "Red", "Paint", 18.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1007, "Pink", "Paint", 20.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1008, "Eggshell", "Paint", 21.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1009, "White", "Paint", 25.00, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1010, "Black", "Paint", 15.00, 30);


SELECT * from products