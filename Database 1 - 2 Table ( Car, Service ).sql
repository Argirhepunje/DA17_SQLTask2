create table Customers (
    customer_id serial primary key,
    full_name varchar,
    contact_number varchar,
    address varchar,
	appointment boolean
);

insert into Customers (full_name, contact_number, address, appointment) values
('Ankita', '9876543210', '123 MG Road, Pune', true),
('Bharat', '8765432109', '456 Linking Road, Mumbai', true),
('Chitra', '7654321098', '789 Brigade Road, Bangalore', true),
('Divyesh', '6543210987', '101 Anna Salai, Chennai', false),
('Esha', '5432109876', '202 Park Street, Kolkata', true);

select * from Customers;

create table Cars (
    car_id serial primary key,
    make varchar,
    model varchar,
    year int,
	customer_id int,
	CONSTRAINT fk_Cars_Customers FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

insert into Cars (customer_id, make, model, year) values
(1, 'Honda', 'City', 2020),
(2, 'Maruti', 'Swift', 2019),
(3, 'Toyota', 'Innova', 2021),
(4, 'Hyundai', 'Creta', 2022),
(5, 'Tata', 'Nexon', 2020);

select * from Cars;