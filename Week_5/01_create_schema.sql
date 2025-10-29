CREATE DATABASE school;
GO

-- Switch to the new database context to create tables in it
USE school;
GO

-- Task [79]: Create a table 'students'
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    major VARCHAR(50)
);
GO

-- Task [80]: Create a table 'courses'
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50)
);
GO

-- Task [81]: Create a table 'enrollments' with foreign keys
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
