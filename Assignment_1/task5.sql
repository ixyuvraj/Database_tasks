SELECT COUNT(*) AS total_students FROM STUDENTS;

SELECT COUNT(*) AS active_students FROM STUDENTS WHERE active_flag = 1;


SELECT SUM(fees) as total_fees from COURSES;

SELECT AVG(fees) as average_fees from COURSES;

SELECT SUM(fees) FROM COURSES WHERE fees > 2000;


SELECT MIN(age) from STUDENTS;

SELECT MAX(fees) from COURSES;

SELECT MAX(registration_date) from STUDENTS;

SELECT MIN(registration_date) from STUDENTS;



SELECT active_flag, COUNT(*) FROM STUDENTS GROUP BY active_flag;

SELECT age, COUNT(*) AS total_age_students FROM STUDENTS GROUP BY age;

SELECT course_id, COUNT(*) as total_enrollements FROM ENROLLMENTS GROUP BY course_id;


SELECT course_id from ENROLLMENTS GROUP BY course_id HAVING COUNT(*) > 2;


/*   Total fees per course

Groups where avg age > 21 */ 