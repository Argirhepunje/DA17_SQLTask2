create table Users (
    user_id serial primary key,
    username varchar(50) NOT NULL,
    email varchar(100) UNIQUE
);

insert into Users (username, email) values
('user1', 'user1@example.com'),
('user2', 'user2@example.com'),
('user3', 'user3@example.com');

select * from Users;

create table Posts (
    post_id serial primary key,
    user_id int REFERENCES Users(user_id),
    title varchar(200),
    content text,
    post_date date,
	CONSTRAINT fk_Posts_Users FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

insert into Posts (user_id, title, content, post_date) values
(1, 'First Post', 'This is my first post.', '2023-11-20'),
(2, 'Another Post', 'Here is some more content.', '2023-11-21'),
(1, 'Simple Post', 'Keep it simple.', '2023-11-22');

select * from Posts;