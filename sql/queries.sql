USE School_Management_System;

-- Show all students
SELECT * FROM Students;

-- Order students by name
SELECT * FROM Students ORDER BY name ASC;

-- Show student grades report
SELECT * FROM Student_Grades_Report;

-- Average grade per student
SELECT 
    Students.name,
    AVG(Grades.grade) AS Average_Grade
FROM Grades
JOIN Students ON Grades.student_id = Students.id
GROUP BY Students.name;

-- Students with GPA above 80
SELECT name, gpa
FROM Students
WHERE gpa > 80;

-- Teacher and their subjects
SELECT 
    Teachers.name AS Teacher_Name,
    Subjects.subject_name
FROM Subjects
JOIN Teachers ON Subjects.teacher_id = Teachers.id;
