SELECT student_name, student_email, completion_percentage FROM enrollments
WHERE enrollments.course_title = 'Intro to Python';

SELECT * FROM enrollments
WHERE enrollments.completion_percentage <10;

SELECT * FROM enrollments
WHERE enrollments.enrollment_date IS NULL;

SELECT * FROM enrollments
WHERE enrollments.passed = FALSE
ORDER BY enrollments.completion_percentage DESC
LIMIT 5;

SELECT * FROM enrollments
WHERE enrollment_date > NOW() - INTERVAL '1 year'
ORDER BY enrollment_date DESC;

INSERT INTO enrollments (id, student_id, student_name, student_email, course_id, course_title, category, enrollment_date, completion_percentage, passed, monthly_fee_paid, instructor)
VALUES (18, 3, 'Lucia Fernandes', 'lucia.fernandes@student.edutrack.com', 5, 'Advanced Python', 'Programming', '2025-04-01', 0, FALSE, 69.99, 'Carlos Vega');

UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE enrollments.instructor IS NULL;

DELETE FROM enrollments
WHERE enrollments.student_email LIKE '%@test.com';

SELECT category, COUNT(*) as Total_Por_Categoria
FROM enrollments
GROUP BY category;

SElECT course_title, AVG(completion_percentage) as Promedio_Completitud
FROM enrollments
GROUP BY course_title;

SELECT course_title
FROM enrollments
GROUP BY course_title
HAVING COUNT(*) > 3;

SELECT category, SUM(monthly_fee_paid) as Total_Mensualidades
FROM enrollments
GROUP BY category;

