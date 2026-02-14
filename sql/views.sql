USE School_Management_System;

-- view for the grade report
DROP VIEW IF EXISTS Student_Grades_Report;

CREATE VIEW Student_Grades_Report AS
SELECT
    Students.name AS Student_Name,
    Subjects.subject_name AS Subject,
    Teachers.name AS Teacher_Name,
    Grades.grade
FROM Grades
JOIN Students ON Grades.student_id = Students.id
JOIN Subjects ON Grades.subject_id = Subjects.id
JOIN Teachers ON Subjects.teacher_id = Teachers.id;
