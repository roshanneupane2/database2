-- Create Database
CREATE DATABASE attendance_system;
USE attendance_system;

-- 1. STUDENTS TABLE
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    class VARCHAR(50),
    roll_no INT UNIQUE
);

-- 2. TEACHERS TABLE
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- 3. COURSES TABLE (Linked to Teachers)
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- 4. ATTENDANCE TABLE (Linked to Students + Courses)
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    date DATE NOT NULL,
    status ENUM('Present','Absent','Late') DEFAULT 'Present',
    
    FOREIGN KEY (student_id) REFERENCES students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (course_id) REFERENCES courses(course_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 5. USERS TABLE (Login System - optional)
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('admin','teacher','student') NOT NULL,
    linked_id INT,   -- teacher_id or student_id
    FOREIGN KEY (linked_id) REFERENCES students(student_id)
);
