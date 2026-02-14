# School Management System Database

## Overview
A relational database project built using MySQL to manage students, teachers, subjects, and grades.

## Features
- Normalized relational schema
- Primary and Foreign Keys
- Data integrity constraints
- Composite UNIQUE constraint
- Reporting View
- Sample data included

## Database Structure
- Students
- Teachers
- Subjects
- Grades

## Relationships
- One Teacher teaches many Subjects
- One Student has many Grades
- One Subject has many Grades
- Many-to-Many relationship between Students and Subjects through Grades

## How to Run
1. Run `schema.sql`
2. Run `sample_data.sql`
3. Run `views.sql`
4. Use `queries.sql` for reports

## ERD
See `ERD.png` for the database diagram.
