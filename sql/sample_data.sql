USE School_Management_System;

-- Teachers
INSERT INTO Teachers (name, birth_date, gender, email, office_number)
VALUES
('Ahmed Alqahtani', '1980-05-10', 'M', 'ahmed@school.com', 'A101'),
('Sara Alharbi', '1985-09-15', 'F', 'sara@school.com', 'B202');

-- Subjects
INSERT INTO Subjects (subject_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2),
('Physics', 1);

-- Students
INSERT INTO Students (name, birth_date, gender, email, level, track, gpa)
VALUES
('Ali Mohammed', '2006-03-12', 'M', 'ali@student.com', 3, 'Scientific', 88.50),
('Mona Khalid', '2007-07-20', 'F', 'mona@student.com', 2, 'Literary', 92.30),
('Omar Saeed', '2006-11-05', 'M', 'omar@student.com', 3, 'Scientific', 75.00);

-- Grades
INSERT INTO Grades (student_id, subject_id, grade)
VALUES
(1, 1, 85.00),
(1, 2, 90.00),
(2, 2, 95.00),
(3, 1, 70.00),
(3, 3, 80.00);
