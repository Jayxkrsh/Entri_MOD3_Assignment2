create database sales;
use sales;

create table Orders (
Order_id int auto_increment primary key,
Customer_Name varchar(30) Not null ,
Product_Category varchar(50) not null,
Ordered_Item varchar(50) not null,
Contact_No bigint unique
check (LENGTH(Contact_No)=10)
);

Alter table orders
add Order_quantity int not null
after Order_id;

desc orders;

rename table orders to Sales_orders;

INSERT INTO Sales_Orders (Customer_Name, Product_Category, Ordered_Item, Contact_No, order_quantity)
VALUES 
('John Doe', 'Electronics', 'Smartphone',9876543210, 2),
('Jane Smith', 'Home Appliances', 'Microwave Oven', 9876543211, 1),
('Emily Davis', 'Furniture', 'Sofa', 9876543212, 1),
('Michael Brown', 'Clothing', 'Jacket', 9876543213, 3),
('Sarah Wilson', 'Books', 'Fiction Novel', 9876543214, 5),
('David Johnson', 'Electronics', 'Laptop', 9876543215, 1),
('Emma Thomas', 'Sports', 'Tennis Racket', 9876543216, 2),
('James Garcia', 'Kitchenware', 'Cookware Set', 9876543217, 4),
('Olivia Martinez', 'Toys', 'Building Blocks', 9876543218, 3),
('Liam Anderson', 'Beauty', 'Skincare Set', 9876543219, 2);

select * from sales_orders;

select Customer_Name,Ordered_Item from sales_orders;

UPDATE Sales_Orders
SET Ordered_Item = 'Office Chair'
WHERE Order_id = 3;

#deleting the sales_orders table from database
drop table sales_orders;

