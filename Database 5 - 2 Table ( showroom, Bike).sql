create table Showrooms (
    Showroom_id serial primary key,
    ShowroomName varchar(255),
    address  varchar(255),
    ContactNumber  varchar(20)
);

insert into Showrooms (ShowroomID, ShowroomName, address, ContactNumber) values
(1, 'City Bikes', 'Downtown', '123-456-7890'),
(2, 'Speed Motors', 'Suburbia', '987-654-3210'),
(3, 'Ride On Wheels', 'Industrial Area', '555-123-4567'),
(4, 'Power Bikes', 'Uptown', '111-222-3333');

select * from Showrooms;

create table Bikes (
    bike_id serial primary key,
    Model  varchar(255),
    Engine_Capacity int,
    Price DECIMAL(10, 2),
    Showroom_id int,
    FOREIGN KEY (Showroom_id) REFERENCES Showrooms(Showroom_id)
);

insert into Bikes (bike_id, Model, Engine_Capacity, Price, ShowroomID) VALUES
(101, 'Ninja 400', 399, 5000.00, 1),
(102, 'CBR 650R', 649, 9000.00, 2),
(103, 'MT-07', 689, 8000.00, 1),
(104, 'Interceptor 650', 648, 6000.00, 3),
(105, 'Duke 390', 373, 5500.00, 4),
(106, 'SV650', 645, 7500.00, 2);

select * from Bikes;