create table Shops (
    shop_id serial primary key,
    shop_name varchar(255),
    address varchar(255),
    city varchar(100),
    contact_number varchar(20)
);

insert into Shops (shop_name, address, city, contact_number) values
('TechZone Electronics', '101 MG Road', 'Mumbai', '9876543210'),
('Digital World', '202 Park Street', 'Kolkata', '8765432109'),
('Gadget Galaxy', '303 Brigade Road', 'Bangalore', '7654321098'),
('Electronix Hub', '404 Anna Salai', 'Chennai','6543210987');

select * from Shops

create table ElectronicsItems (
    item_id serial primary key,
    item_name varchar(255),
    item_description text,
    category varchar(100)
);

insert into ElectronicsItems (item_name, item_description, category) values
('Laptop - Model X', '15-inch, 16GB RAM, 512GB SSD', 'Laptops'),
('Smartphone - Model Y', '6.5-inch, 128GB Storage, Dual Camera', 'Smartphones'),
('Smart TV - Model Z', '55-inch, 4K UHD, Smart Features', 'Televisions'),
('Wireless Headphones - Model A', 'Noise Cancelling, Bluetooth 5.0', 'Audio'),
('Digital Camera - Model B', '24MP, 4K Video, Interchangeable Lens', 'Cameras');

select * from ElectronicsItems;

create table Prices (
    price_id serial primary key,
    shop_id int ,
    item_id int ,
    price DECIMAL(10, 2),
    availability boolean,
	CONSTRAINT fk_Prices_Shops FOREIGN KEY (shop_id) REFERENCES Shops(shop_id) ,
	CONSTRAINT fk_Prices_ElectronicsItems FOREIGN KEY (item_id) REFERENCES ElectronicsItems(item_id)
);

insert into Prices (shop_id, item_id, price, availability) values
(1, 1, 1200.00, TRUE),
(2, 1, 1250.00, TRUE),
(3, 2, 800.00, TRUE),
(4, 2, 820.00, FALSE),
(1, 3, 700.00, TRUE),
(2, 3, 710.00, TRUE),
(3, 4, 150.00, TRUE),
(4, 4, 155.00, TRUE),
(1, 5, 900.00, TRUE),
(2, 5, 920.00, FALSE);

select * from Prices