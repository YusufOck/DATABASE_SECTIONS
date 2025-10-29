# Sivas University of Science and Technology - Database Systems and Applications

[cite_start]This repository contains the solution for Lab 5: SQL Joins[cite: 2], part of the Computer Engineering Department's "Database Systems and Applications" course.

[cite_start]This exercise involves creating a `school` database, defining a schema with `students`, `courses`, and `enrollments` tables [cite: 78, 79, 80, 81][cite_start], populating them with data [cite: 82][cite_start], and executing `INNER`, `LEFT`, and `RIGHT` JOIN queries to retrieve and analyze relational data[cite: 83, 84, 85].

## Repository Structure

The SQL scripts for this lab are located in the `week_5/` directory.


## ⚙️ Script Descriptions

All scripts for this lab are located in the `week_5/` folder.

### 01_create_schema.sql — Database and Table Creation

[cite_start]This script contains the Data Definition Language (DDL) required to build the `school` database[cite: 78]. It creates the three core tables for the exercise:
* [cite_start]`students` [cite: 79]
* [cite_start]`courses` [cite: 80]
* [cite_start]`enrollments`: A junction table that links students to courses using foreign keys[cite: 81], representing which student is enrolled in which course.

⸻

### 02_insert_data.sql — Data Population

[cite_start]This script uses `INSERT` statements to populate the three tables with sample data, as required by the lab task[cite: 82]. The data is specifically structured to test the JOIN queries:
* A student (`Zeynep Kaya`) is added who is **not** enrolled in any course (to test `LEFT JOIN`).
* A course (`Data Structures`) is added that has **no** students enrolled (to test `RIGHT JOIN`).

⸻

### 03_join_queries.sql — Relational Queries (JOINs)

[cite_start]This script contains the three distinct JOIN queries required by the assignment[cite: 83, 84, 85]. Each query is designed to demonstrate a different way of combining data from the related tables, with comments explaining the expected output.
* [cite_start]**INNER JOIN:** Retrieves only the rows that have a match in all joined tables (i.e., students who are enrolled in a course)[cite: 83].
* [cite_start]**LEFT JOIN:** Retrieves all rows from the left table (`students`), showing `NULL` for any student not enrolled in any course[cite: 84].
* [cite_start]**RIGHT JOIN:** Retrieves all rows from the right table (`courses`), showing `NULL` for any course that has no students enrolled[cite: 85].

⸻

## 🔗 License

This code is released for academic and research purposes only under the MIT License.
