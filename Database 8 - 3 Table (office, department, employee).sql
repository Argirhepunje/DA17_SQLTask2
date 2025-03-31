create table Offices (
    office_id serial primary key,
    office_name varchar(255),
    address varchar(255),
    city varchar(100),
    country varchar(100)
);

INSERT INTO Offices (office_name, address, city, country) VALUES
('Headquarters', '123 Main Street', 'New York', 'USA'),
('Regional Office', '456 Market Road', 'London', 'UK'),
('Branch Office', '789 Tech Avenue', 'Tokyo', 'Japan');

select* from Offices;

create table Department (
    department_id serial primary key,
    office_id int ,
    department_name varchar(100),
    manager_name varchar(255),
CONSTRAINT fk_Departments_Offices FOREIGN KEY (office_id) REFERENCES Offices(office_id)
);

INSERT INTO Department (office_id, department_name, manager_name) VALUES
(1, 'Sales', 'John Smith'),
(1, 'Marketing', 'Jane Doe'),
(2, 'IT', 'David Lee'),
(3, 'HR', 'Sarah Kim');

select * from Department;

create table Employees (
    employee_id serial primary key,
    department_id int ,
    full_name varchar(255),
    job_title varchar(100),
    date_of_birth date,
    hire_date date,
    salary DECIMAL(10, 2),
	CONSTRAINT fk_Employees_Department FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

INSERT INTO Employees (department_id, full_name, job_title, date_of_birth, hire_date, salary) VALUES
(1, 'xyz', 'Sales Manager', '1990-05-15', '2020-01-10', 80000.00),
(1, 'klm', 'Sales Representative', '1992-08-20', '2021-03-01', 60000.00),
(2, 'abcd', 'Marketing Specialist', '1988-12-10', '2019-06-15', 75000.00),
(3, 'jkl', 'IT Manager', '1991-03-25', '2022-02-20', 90000.00),
(4, 'pqr', 'HR Coordinator', '1993-07-05', '2023-01-05', 55000.00);

select* from Employees;