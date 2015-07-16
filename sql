create table book (
book_id serial primary key,
bookname varchar(100),
author varchar(30),
imagepath varchar(100),
publish varchar(100),
price int,
quality int,
description text,
category varchar(100)																																					
)

create table users (
user_id serial primary key,
username varchar(100),
password varchar(30),
name varchar(100),
sex varchar(100),
address varchar(100),
phone varchar(100),
birthday date,
email varchar(100)																																					
);

create table shopcar (
id serial primary key,
user_id int,
book_id int,
add_date date,
num int,
foreign key (user_id) references users(user_id),
foreign key (book_id) references book(book_id)																																				
);

create table comments (
id serial primary key,
user_id int,
book_id int,
comment_date date,
content text,
foreign key (user_id) references users(user_id),
foreign key (book_id) references book(book_id)																																				
);







