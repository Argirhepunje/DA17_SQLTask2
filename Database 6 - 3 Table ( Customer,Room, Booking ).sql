create table Customer (
    customer_id serial primary key,
    full_name varchar,
    contact_number varchar,
    identity_proof varchar
);

insert into Customer (full_name, contact_number, identity_proof) values
('Aarav', '5341564135', '48955622'),
('Diya', '6354653365', '52533633'),
('Rohan', '9874612386', '45641455'),
('Sneha', '9874653456', '654546465'),
('Vikram', '6454444123', '65453146');

select * from Customer

create table Rooms (
    room_id serial primary key,
    room_number varchar,
    room_type varchar(50),
    price_per_night DECIMAL(10, 2)
);

insert into Rooms (room_number, room_type, price_per_night) values
('101', 'Standard', 150.00),
('102', 'Standard', 150.00),
('201', 'Deluxe', 250.00),
('202', 'Deluxe', 250.00),
('301', 'Suite', 400.00);

select * from Rooms

create table Bookings (
    booking_id serial primary key,
    customer_id int,
    room_id int,
    check_in_date date,
    check_out_date date,
    number_of_guests int,
	CONSTRAINT fk_Bookings_Customer FOREIGN KEY (customer_id)  REFERENCES Customers(customer_id),
	CONSTRAINT fk_Bookings_Rooms FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

insert into Bookings (customer_id, room_id, check_in_date, check_out_date, number_of_guests) values
(1, 1, '2023-11-20', '2023-11-23', 2),
(3, 4, '2023-11-21', '2023-11-24', 2),
(4, 2, '2023-11-22', '2023-11-25', 3),
(2, 5, '2023-11-23', '2023-11-26', 2),
(5, 3, '2023-11-24', '2023-11-27', 4);

select * from bookings