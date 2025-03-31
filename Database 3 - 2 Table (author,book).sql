create table Authors (
    author_id serial primary key ,
    author_name varchar(255) NOT NULL,
    nationality  varchar(100)
);

INSERT INTO Authors (author_name, nationality) VALUES
('abcd', 'British'),
('efgh', 'Russian'),
('ijkl', 'Colombian'),
('mnop', 'Japanese'),
('qrst', 'Nigerian');

select * from Authors;

create table Books (
    book_id serial primary key ,
    title  varchar(255) NOT NULL,
    author_id int ,
    publication_year int,
	CONSTRAINT fk_Books_Authors FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

INSERT INTO Books (title, author_id, publication_year) VALUES
('xyz', 1, 1813),
('abc', 2, 1869),
('1236', 3, 1967),
('hfb5', 4, 1987),
('hhbd54', 5, 2013),
('jbdk64', 1, 1815),
('hbh2331', 2, 1877);

select * from Books;