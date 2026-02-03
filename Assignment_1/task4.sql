SELECT * FROM STUDENTS WHERE age > 21;

SELECT * FROM STUDENTS WHERE active_flag  = 1;

SELECT * FROM COURSES WHERE fees BETWEEN 1000 AND 5000;

SELECT * FROM STUDENTS WHERE age IN (20, 22, 25);

SELECT * FROM STUDENTS WHERE age > 20 AND active_flag = 1;

SELECT * FROM STUDENTS WHERE age < 20 OR active_flag = 0;

SELECT * FROM COURSES WHERE fees > 2000 AND course_name LIKE '%Data%';

SELECT * FROM STUDENTS WHERE email LIKE '%gmail.com';


INSERT INTO STUDENTS (student_id, name, email, age, registration_date, active_flag)
values (1014, 'Null Age', 'null@gmail.com', NULL, '2023-09-01', 1);

SELECT * FROM STUDENTS WHERE age is NULL;

SELECT * FROM STUDENTS WHERE age is NOT NULL;


