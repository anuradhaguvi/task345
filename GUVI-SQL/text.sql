
CREATE TABLE Employees (
 emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);






INSERT INTO employees ( emp_id, emp_name, dept_id)
VALUES
(101, 'john', 1),
(102, 'kritika', 2),
(103, 'rohan', 1),
(104, 'tharini', 3),
(105, 'ronisha', 4);

INSERT INTO departments ( dept_id, dept_name)
VALUES
(1,'HR'),
(2, 'sales'),
(3, 'purchase'),
(4, 'marketing');
SELECT Employees. emp_id, Employees.emp_name, Departments.dept_name FROM Employees
INNER JOIN Departments ON Employees.dept_id = Departments.dept_id;

UPDATE Employees
SET dept_id = 2;

UPDATE Departments
SET dept_name = "Human Resource"
WHERE dept_id = 1;
ALTER TABLE Employees ADD Email TEXT;
ALTER TABLE Employees DROP COLUMN Email

	
1. Create tables for the above list given
create table users(username varchar(20) ,email varchar(20),password varchar(20) ,batch_no varchar(10),PRIMARY KEY (username),);

create table codekata(section varchar(20) ,totalproblems num,solved num ,username varchar(20),PRIMARY KEY (section),FOREIGN KEY (username));

create table attendance(sessionName varchar(20) ,date DATE ,username varchar(20),PRIMARY KEY (sessionName),FOREIGN KEY (username));


create table topics(topicName varchar(20) ,date DATE ,PRIMARY KEY (topicName) );


create table company_drives(companyName varchar(20) ,date DATE ,username varchar(20),PRIMARY KEY (companyName),FOREIGN KEY (username));

create table mentors(mentorName varchar(20) ,batchno varchar(10) ,PRIMARY KEY (mentorName),FOREIGN KEY (batchno));


create table students_activated_courses(activated_course varchar(20)  ,username varchar(20),PRIMARY KEY (activated_course),FOREIGN KEY (username));

create table courses(section varchar(20)  ,price FLOAT(2),PRIMARY KEY (section));




2. insert at least 5 rows of values in each table

INSERT INTO 
	users
VALUES
	('john','john@yahoo.com','12321qwsadasd','B24WE'),
	('joseph','joseph@yahoo.com','12321qwsadasd','B25WE'),
	('Olive','Olive@yahoo.com','12321qwsadasd','B23WE'),
	('Aiy','Aiy@yahoo.com','12321qwsadasd','B24WE'),
	('Albert','Albert@yahoo.com','12321qwsadasd','B24WE');
	
INSERT INTO 
	attendance
VALUES
	('HTML','2021-05-01','john'),
	('CSS','2021-06-05','joseph'),
	('JS','2021-07-15','Olive'),
	('React','2021-08-22','Aiy'),
	('Nodejs','2021-09-30','john');
	
INSERT INTO 
	codekata
VALUES
	('Arrays','100','50','john'),
	('LInked List','200','120','joseph'),
	('Basic','150','50','Olive'),
	('Graph','300','99','Aiy'),
	('Input','500','105','john');
	
	
INSERT INTO 
	topics
VALUES
	('HTML','2021-05-01'),
	('CSS','2021-06-05'),
	('JS','2021-07-15'),
	('React','2021-08-22'),
	('Nodejs','2021-09-30');
	
INSERT INTO
	mentors
VALUES
	('Albert','B24WE'),
	('Betis','B23WE'),
	('Carol','B23WE'),
	('Derek','B21WE'),
	
INSERT INTO 
	company_drives
VALUES
	('Ola','2021-05-01','john'),
	('Ola','2021-06-05','joseph'),
	('Uber','2021-07-15','Olive'),
	('Flipkart','2021-08-22','Aiy'),
	('Ola','2021-09-30','john');
	
	
INSERT INTO 
	students_activated_courses
VALUES
	('Learn Python','john'),
	('Data Structures','joseph'),
	('DataBases','Olive'),
	('GraphQL'','Aiy'),
	('GraphQL','john');
	
INSERT INTO 
	courses
VALUES
	('Learn Python',' 1200'),
	('Data Structures','1400'),
	('DataBases','2000'),
	('GraphQL'','1000'),
	('Nodejs','3000');


3. get number problems solved in codekata by combining the users


SELECT SUM(solved) FROM codekata;



4. display the no of company drives attended by a user

SELECT COUNT(username),companyName FROM company_drives GROUP BY username;



5. combine and display students_activated_courses and courses for a specific user groping them based on the course

SELECT  Count(activated_course),username FROM students_activated_courses group By username


6. list all the mentors

SELECT mentorName from mentors

7. list the number of students that are assigned for a mentor


SELECT count(u.username) , m.mentorName FROM users u INNER JOIN mentors m ON u.batch_no=m.batchno groupBy u.username

