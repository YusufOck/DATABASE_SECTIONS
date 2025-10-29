USE school;
GO

-- Task [83]: Perform an INNER JOIN
-- Shows only students who ARE enrolled in courses.
-- Result: Zeynep (student) and Data Structures (course) will NOT appear.
PRINT '--- 1. INNER JOIN Results (Only enrolled students) ---';
SELECT 
    s.student_name, 
    c.course_name, 
    e.grade
FROM 
    students s
INNER JOIN 
    enrollments e ON s.student_id = e.student_id
INNER JOIN 
    courses c ON e.course_id = c.course_id;
GO

-- Task [84]: Perform a LEFT JOIN
-- Shows ALL students, even if they are not enrolled in any course.
-- Result: Zeynep WILL appear, but her course_name and grade will be NULL.
PRINT '--- 2. LEFT JOIN Results (All students) ---';
SELECT 
    s.student_name, 
    c.course_name, 
    e.grade
FROM 
    students s
LEFT JOIN 
    enrollments e ON s.student_id = e.student_id
LEFT JOIN 
    courses c ON e.course_id = c.course_id;
GO

-- Task [85]: Perform a RIGHT JOIN
-- Shows ALL courses, even if no student is enrolled in them.
-- Result: Data Structures WILL appear, but its student_name will be NULL.
PRINT '--- 3. RIGHT JOIN Results (All courses) ---';
SELECT 
    s.student_name, 
    c.course_name
FROM 
    enrollments e
RIGHT JOIN 
    courses c ON e.course_id = c.course_id
LEFT JOIN 
    students s ON e.student_id = s.student_id;
GO