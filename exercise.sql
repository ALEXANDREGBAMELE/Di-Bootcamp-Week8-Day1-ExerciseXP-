--@author: Alexandre GBAMELE
 CREATE TABLE students(std_id SERIAL PRIMARY KEY,
 					  last_name VARCHAR(150) NOT NULL,
					 first_name VARCHAR(255) NOT NULL,
 					  birth_date DATE
 					 );
 INSERT INTO students(last_name,first_name,birth_date) VALUES
 ('Marc',	'Benichou'	,'11/02/1998'),
 ('Yoan',	'Cohen',	'12/03/2010'),
 ('Lea',	'Benichou',	'07/27/1987'),
 ('Amelia',	'Dux',	'04/07/1996'),
 ('David',	'Grez',	'06/14/2003'),
 ('Omer'	,'Simpson',	'10/03/1980');

-- --1 Fetch all of the data from the table.
 	SELECT * FROM students;
-- --2 Fetch all of the students first_names and last_names.
 	SELECT last_name,first_name FROM students;
-- --3 For the following questions, only fetch the first_names and last_names of the students.
--3-1 Fetch the student which id is equal to 2.
	SELECT last_name,first_name FROM students WHERE std_id = 2;
--3-2 Fetch the student whose last_name is Benichou AND first_name is Marc.
	SELECT last_name,first_name FROM students WHERE last_name = 'Marc' AND first_name = 'Benichou';
--3-3 Fetch the students whose last_names are Benichou OR first_names are Marc.
	SELECT last_name,first_name FROM students WHERE last_name = 'Marc' OR first_name = 'Benichou';
--3-4 Fetch the students whose first_names contain the letter a.
	SELECT last_name,first_name FROM students WHERE  last_name LIKE '%a%';
--3-5 Fetch the students whose first_names start with the letter a.
	SELECT last_name,first_name FROM students WHERE  last_name LIKE 'A%';
--3-6 Fetch the students whose first_names end with the letter a.
	SELECT last_name,first_name FROM students WHERE  last_name LIKE '%a';
--3-7 Fetch the students whose second to last letter of their first_names are a (Example: Leah).
	SELECT last_name,first_name FROM students WHERE  last_name LIKE '%a_';
--3-8 Fetch the students whose id’s are equal to 1 AND 3 .
	SELECT std_id,last_name,first_name FROM students WHERE std_id IN (1 , 3); 
-- Fetch the students whose birth_dates are equal to or come after 1/01/2000. (show all their info).
	SELECT std_id,last_name,first_name,birth_date FROM students WHERE birth_date = '1/01/2000';