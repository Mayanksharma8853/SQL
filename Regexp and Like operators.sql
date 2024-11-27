create database library;
use library;

create table books(
   id int primary key auto_increment,
   title varchar(255),
   author varchar(100),
   year year,
   genre varchar(100));

INSERT INTO books (title, author, year, genre) 
VALUES('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction'),
('Pride and Prejudice', 'Jane Austen', 1913 , 'Romance'),
('To Kill a Mockingbird', 'Harper Lee', 1960 , 'Fiction'),
('1984', 'George Orwell', 1949 , 'Dystopian'),
('Moby Dick', 'Herman Melville', 1951 , 'Adventure');
select * from books;

#Write a query to select all books where the tiltle starts with the letter 'T' using the like operator
select * from books where title like "T%";

#Write a query to find all books where the author's last name ends with 'son' using the LIKE operator
select * from books where author like "%son";

#Write a query to find all books where the title contains the word 'and' using the LIKE operator
select * from books where title like "%and%";

#Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select * from books where title like "%bird";

#Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.
select * from books where title regexp "^___$";

#Write a query to select all books where the title contains a number using the REGEXP operator.
select * from books where title regexp '[0-9]';

#Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.
select * from books where author regexp '[a-j]';

#Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
select * from books where genre regexp 'fiction|adventure';

#Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
select * from books where ucase(title regexp'[a-z]');

#Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
select * from books where year like'18%'or year like'19%' and year<1950;

#Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.
select * from books where author regexp'^__$';

#Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
select * from books where author regexp'p_$';

#Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
select * from books where title regexp'[!@#\$%&*]';

