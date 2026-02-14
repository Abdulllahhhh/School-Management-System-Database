-- Schema: School Management System

CREATE DATABASE IF NOT EXISTS School_Management_System;
USE School_Management_System;

-- Students Table
CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M','F')),
    email VARCHAR(150) UNIQUE,
    level INT NOT NULL CHECK (level BETWEEN 1 AND 6),
    track VARCHAR(20) NOT NULL CHECK (track IN ('Scientific','Literary')),
    gpa DECIMAL(5,2) CHECK (gpa BETWEEN 0 AND 100)
);

-- Teachers Table
CREATE TABLE Teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M','F')),
    email VARCHAR(150) UNIQUE,
    office_number VARCHAR(20)
);

-- Subjects Table
CREATE TABLE Subjects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Grades Table
CREATE TABLE Grades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    grade DECIMAL(5,2) CHECK (grade BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES Students(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES Subjects(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT unique_student_subject UNIQUE (student_id, subject_id)
);
