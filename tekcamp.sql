1. SHOW DATABASES;

2.CREATE DATABASE `tc-1-korey-brooks`;

3.USE `tc-1-korey-brooks`;
CREATE TABLE tekcampers(name varchar(50));

4. CREATE TABLE IF NOT EXISTS tekcampers LIKE students.tekcamp01;
INSERT tekcampers SELECT * FROM students.tekcamp01;
5.INSERT INTO tekcampers(first_name, last_name, gender)
VALUES ('John','Kol','M'),
('Kevin','Keesee','M'),
('Tyler','Clements','M'),
('Vimala','Murthy','F'),
('Aaron','White','M'),
('Cody', 'Clark', 'M'),
('Devon', 'Brewster', 'M'),
('Gotham', 'Katta', 'M'),
('John', 'Bozarov', 'M'),
('Justin', 'Cheng', 'M'),
('Monica', 'Howard', 'F');
6.DELETE FROM tekcampers WHERE id=9;
DELETE FROM tekcampers WHERE id=20;
DELETE FROM tekcampers WHERE id=20;

7.UPDATE tekcampers SET gender = education WHERE id < 28;
UPDATE tekcampers SET education = null WHERE id < 38;
UPDATE tekcampers SET gender = 'M' WHERE id = 2;
UPDATE tekcampers SET gender = 'M' WHERE id = 15;
UPDATE tekcampers SET gender = 'M' WHERE id = 22;
UPDATE tekcampers SET gender = 'M' WHERE id = 24;
UPDATE tekcampers SET gender = 'F' WHERE id = 4;
UPDATE tekcampers SET gender = 'F' WHERE id = 10;

UPDATE tekcampers SET education = 'Masters Degree' WHERE id = 23;
UPDATE tekcampers SET education = 'Ph.D.' WHERE id = 10;
UPDATE tekcampers SET education = 'Masters Degree' WHERE id = 21;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 1;
UPDATE tekcampers SET education = 'Associates Degree' WHERE id = 15;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 4;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 5;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 6;
UPDATE tekcampers SET education = 'Some College' WHERE id = 7;
UPDATE tekcampers SET education = 'Associates Degree' WHERE id = 8;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 11;
UPDATE tekcampers SET education = 'Some College' WHERE id = 12;
UPDATE tekcampers SET education = 'High School Diploma' WHERE id = 14;
UPDATE tekcampers SET education = 'Some College' WHERE id = 15;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 16;
UPDATE tekcampers SET education = 'Associates Degree' WHERE id = 17;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 18;
UPDATE tekcampers SET education = 'Some College' WHERE id = 19;
UPDATE tekcampers SET education = 'Some College' WHERE id = 24;
UPDATE tekcampers SET education = 'High School Diploma' WHERE id = 25;
UPDATE tekcampers SET education = 'High School Diploma' WHERE id = 29;
UPDATE tekcampers SET education = 'Masters Degree' WHERE id = 31;
UPDATE tekcampers SET education = 'Some College' WHERE id = 33;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 35;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE id = 36;
UPDATE tekcampers SET education = 'Some College' WHERE id = 37;

8.
i. SELECT * FROM tekcampers WHERE char_length(last_name) > 7;
ii. SELECT * FROM tekcampers ORDER BY first_name;
iii. SELECT * FROM tekcampers ORDER BY last_name;
iv. SELECT * FROM tekcampers WHERE gender = 'M';
v. SELECT * FROM tekcampers WHERE gender = 'F';
vi. SELECT * FROM tekcampers WHERE education = 'Masters';
vii. SELECT * FROM tekcampers WHERE education = 'Bachelors Degree';
viii. SELECT * FROM tekcampers WHERE education = 'Associates Degree';
ix. SELECT * FROM tekcampers WHERE education = 'Some College';
9. CREATE TABLE `ta-mark`(id INT(11)NOT NULL auto_increment primary key, first_name VARCHAR(20), last_name VARCHAR(20), gender CHAR(1), education VARCHAR(20));
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Choat';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Waters';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Bozrov';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Keesee';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Clements';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Johnson';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Katta';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Cheng';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Bates';
INSERT INTO `ta-mark` (first_name, last_name, gender, education)
SELECT first_name, last_name, gender, education 
FROM tekcampers
WHERE last_name = 'Brooks';

10. CREATE TABLE Hobby( 
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20)NOT NULL);
SELECT * FROM Hobby;
INSERT INTO  Hobby(name)
VALUES ('Reading'),
('Cattle Rustling'),
('Listening to Music'),
('Engineering w/ Kids'),
('Golfing'),
('Jiu Jitsu'),
('Eating'),
('Motorcycle Riding'),
('Writing'),
('Pickle Ball'),
('Interior Decoration'),
('Working Out'),
('Playing Soccer'),
('Aerial Yoga'),
('Gaming'),
('Longboarding'),
('Playing the piano'),
('Hockey'),
('Growing Hot Peppers'),
('Gardening'),
('Cooking'), 
('Running'),
('Playing Soccer'),
('Eating');
ALTER TABLE tekcampers ADD hobby INT;
UPDATE tekcampers SET hobby = 1 WHERE ID=1;
UPDATE tekcampers SET hobby = 2 WHERE id = 2;
UPDATE tekcampers SET hobby = 1 WHERE id = 3;
UPDATE tekcampers SET hobby = 3 WHERE id = 4;
UPDATE tekcampers SET hobby = 4 WHERE id = 5;
UPDATE tekcampers SET hobby = 5 WHERE id = 6;
UPDATE tekcampers SET hobby = 6 WHERE id = 7;
UPDATE tekcampers SET hobby = 7 WHERE id = 8;
UPDATE tekcampers SET hobby = 8 WHERE id = 10;
UPDATE tekcampers SET hobby = 9 WHERE id = 11;
UPDATE tekcampers SET hobby = 10 WHERE id = 12;
UPDATE tekcampers SET hobby = 20 WHERE id = 13;
UPDATE tekcampers SET hobby = 15 WHERE id = 14;
UPDATE tekcampers SET hobby = 15 WHERE id = 15;
UPDATE tekcampers SET hobby = 13 WHERE id = 16;
UPDATE tekcampers SET hobby = 14 WHERE id = 17;
UPDATE tekcampers SET hobby = 15 WHERE id = 18;
UPDATE tekcampers SET hobby = 1 WHERE id = 19;
UPDATE tekcampers SET hobby = 16 WHERE id = 21;
UPDATE tekcampers SET hobby = 15 WHERE id = 22;
UPDATE tekcampers SET hobby = 17 WHERE id = 23;
UPDATE tekcampers SET hobby = 15 WHERE id = 24;
UPDATE tekcampers SET hobby = 18 WHERE id = 25;
UPDATE tekcampers SET hobby = 1 WHERE id = 27;
UPDATE tekcampers SET hobby = 1 WHERE id = 28;
UPDATE tekcampers SET hobby = 15 WHERE id = 29;
UPDATE tekcampers SET hobby = 19 WHERE id = 30;
UPDATE tekcampers SET hobby = 20 WHERE id = 31;
UPDATE tekcampers SET hobby = 1 WHERE id = 32;
UPDATE tekcampers SET hobby = 21 WHERE id = 33;
UPDATE tekcampers SET hobby = 1 WHERE id = 34;
UPDATE tekcampers SET hobby = 22 WHERE id = 35;
UPDATE tekcampers SET hobby = 23 WHERE id = 36;
UPDATE tekcampers SET hobby = 7 WHERE id = 37;
UPDATE tekcampers SET hobby = 7 WHERE id = 38;
ALTER TABLE `ta-mark` ADD hobby INT;
UPDATE `ta-mark` SET hobby = 7 WHERE ID=8;  
UPDATE `ta-mark` SET hobby = 16 WHERE ID=21; 
UPDATE `ta-mark` SET hobby = 17 WHERE ID=23;
UPDATE `ta-mark` SET hobby = 18 WHERE ID=25;
UPDATE `ta-mark` SET hobby = 15 WHERE ID=29;
UPDATE `ta-mark` SET hobby = 19 WHERE ID=30;
UPDATE `ta-mark` SET hobby = 22 WHERE ID=35;
UPDATE `ta-mark` SET hobby = 7 WHERE ID=37;

11. SELECT Hobby.name, `ta-mark`.first_name 
	FROM Hobby
    RIGHT JOIN `ta-mark`
    ON Hobby.id=`ta-mark`.hobby;

12. ALTER TABLE tekcampers ADD bootcamp VARCHAR(20);
UPDATE tekcampers SET bootcamp = 'Coding Dojo' WHERE ID=6;
UPDATE tekcampers SET bootcamp = 'DevMountain' WHERE ID=17;
UPDATE tekcampers SET bootcamp = 'Coding Dojo' WHERE ID=12;
UPDATE tekcampers SET bootcamp = 'Coding Dojo' WHERE ID=7;
UPDATE tekcampers SET bootcamp = 'DevMountain' WHERE ID=25;
UPDATE tekcampers SET bootcamp = 'Trilogy Education' WHERE ID=33;
UPDATE tekcampers SET bootcamp = 'SMU Coding Bootcamp' WHERE ID=21;
13.UPDATE `ta-mark` 
	SET bootcamp = 
    (SELECT bootcamp FROM tekcampers WHERE id = `ta-mark`).id;
