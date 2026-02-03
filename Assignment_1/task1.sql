create table STUDENTS (
student_id BIGINT primary key,
name varchar(50),
email varchar(50) unique,
age int,
join_date date,
active_flag bit default 1

);


CREATE TABLE COURSES (
course_id INT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
fees DECIMAL(10, 2)
);


CREATE TABLE ENROLLMENTS (
enroll_id BIGINT PRIMARY KEY,
student_id BIGINT,
course_id INT,
enroll_timestamp DATETIME,
FOREIGN KEY(student_id) REFERENCES STUDENTS(student_id),
FOREIGN KEY(course_id) REFERENCES COURSES(course_id)
);
