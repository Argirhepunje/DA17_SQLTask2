create table Orders (
    order_id serial primary key,
    order_date date,
    total_amount DECIMAL(10, 2)
);

insert into Orders (order_date, total_amount) values
('2023-11-20', 150.00),
('2023-11-21', 200.00),
('2023-11-22', 75.00),
('2023-11-23', 300.00),
('2023-11-24', 120.00);

select * from Orders;

create table OrderItems (
    order_item_id serial primary key,
    order_id int ,
    item_name varchar(255),
    quantity int,
    price_per_item DECIMAL(10, 2),
	CONSTRAINT fk_OrderItems_Orders FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

insert into OrderItems (order_id, item_name, quantity, price_per_item) values
(1, 'Laptop', 1, 150.00),
(2, 'Smartphone', 1, 200.00),
(3, 'Headphones', 2, 37.50),
(4, 'Tablet', 2, 150.00),
(5, 'Smartwatch', 1, 120.00),
(1, 'Mouse', 1, 30.00),
(2, 'keyboard', 1, 40.00),
(3, 'USB cable', 1, 15.00),
(4, 'Monitor', 1, 200.00),
(5, 'Charger', 1, 20.00);

select * from OrderItems;