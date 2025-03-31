create table Colleges (
    college_id serial primary key,
    college_name varchar(255),
    address varchar(255),
    city varchar(100)
);

insert into Colleges (college_name, address, city) values
('Tech College', '100 Tech Lane', 'Tech City'),
('Arts University', '200 Arts Road', 'Arts Town');

select * from Colleges;

create table Departments (
    department_id serial primary key,
    college_id int,
    department_name varchar(100),
    head_of_department varchar(255),
	CONSTRAINT fk_Departments_Colleges FOREIGN KEY (college_id) REFERENCES Colleges(college_id)
);

INSERT INTO Departments (college_id, department_name, head_of_department) VALUES
(1, 'Computer Science', 'Dr. Smith'),
(1, 'Electrical Engineering', 'Prof. Johnson'),
(2, 'Literature', 'Dr. Williams');

select * from Departments;

create table Courses (
    course_id serial primary key,
    department_id int ,
    course_name varchar(100) not null,
    credits int,
	CONSTRAINT fk_Courses_Departments FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Courses (department_id, course_name, credits) VALUES
(1, 'Programming 101', 3),
(1, 'Circuit Design', 4),
(2, 'Modern Literature', 3),
(1, 'Data Structures', 4);

select * from Courses;

create table Students (
    student_id serial primary key,
    college_id int REFERENCES Colleges(college_id),
    full_name varchar(255),
    date_of_birth date,
    email varchar(255)
);

insert into Students (college_id, full_name, date_of_birth, email) values
(1, 'ashwin', '2000-01-01', 'ashwin@example.com'),
(1, 'ram', '2001-02-02', 'ram@example.com'),
(2, 'shyam', '2002-03-03', 'shyam@example.com'),
(1, 'lakhan','2003-04-04','lakhan@example.com');

select * from Students;

create table Marks (
    mark_id serial primary key,
    student_id int REFERENCES Students(student_id),
    marks DECIMAL(5, 2),
    exam_date date
);

insert into Marks (student_id, marks, exam_date) values
(1, 85.50, '2023-11-20'),
(1, 92.00, '2023-11-21'),
(2, 78.75, '2023-11-22'),
(3, 90.25, '2023-11-23'),
(4, 75.00, '2023-11-24'),
(2, 60.00, '2023-11-25'),
(3, 80.00, '2023-11-26'),
(4, 95.00, '2023-11-27'),
(2, 88.00, '2023-11-29');

select * from Marks;