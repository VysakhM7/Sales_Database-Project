CREATE DATABASE Sales;
USE Sales;
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_name VARCHAR(50) NOT NULL,
    Product_Category VARCHAR(50),
    Ordered_item VARCHAR(50) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE
);
ALTER TABLE Orders
ADD COLUMN order_quantity INT;
RENAME TABLE Orders TO sales_orders;
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES
(1, 'Alice', 'Electronics', 'Laptop', '1234567890', 1),
(2, 'Bob', 'Furniture', 'Desk', '2345678901', 2),
(3, 'Charlie', 'Apparel', 'Shirt', '3456789012', 3),
(4, 'David', 'Electronics', 'Smartphone', '4567890123', 1),
(5, 'Eva', 'Books', 'Novel', '5678901234', 5),
(6, 'Frank', 'Kitchen', 'Blender', '6789012345', 1),
(7, 'Grace', 'Office Supplies', 'Notebook', '7890123456', 4),
(8, 'Hannah', 'Furniture', 'Chair', '8901234567', 2),
(9, 'Ian', 'Electronics', 'Headphones', '9012345678', 2),
(10, 'Jack', 'Books', 'Textbook', '0123456789', 1);
SELECT Customer_name, Ordered_item FROM sales_orders;
UPDATE sales_orders
SET Ordered_item = 'Magazine'
WHERE Order_Id = 5;
DROP TABLE sales_orders;
