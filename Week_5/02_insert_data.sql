USE school;
GO

-- Insert records into 'students' table
-- We add 'Zeynep Kaya' (student_id 4) who will not be enrolled in any course.
-- This is to test the LEFT JOIN.
INSERT INTO students (student_id, student_name, major) VALUES
(1, 'Ali Veli', 'Computer Engineering'),
(2, 'Ayse Yilmaz', 'Electrical Engineering'),
(3, 'Mehmet Ozturk', 'Mechanical Engineering'),
(4, 'Zeynep Kaya', 'Computer Engineering');

-- Insert records into 'courses' table
-- We add 'Data Structures' (course_id 104) which will have no students.
-- This is to test the RIGHT JOIN.
INSERT INTO courses (course_id, course_name, department) VALUES
(101, 'Database Systems', 'Computer Engineering'),
(102, 'Circuit Theory', 'Electrical Engineering'),
(103, 'Thermodynamics', 'Mechanical Engineering'),
(104, 'Data Structures', 'Computer Engineering');

-- Insert records into 'enrollments' table
-- Note that student_id 4 (Zeynep) and course_id 104 (Data Structures) are not included here.
INSERT INTO enrollments (enrollment_id, student_id, course_id, grade) VALUES
(1, 1, 101, 'AA'), -- Ali is in Database Systems
(2, 2, 102, 'BB'), -- Ayse is in Circuit Theory
(3, 3, 103, 'CB'); -- Mehmet is in Thermodynamics