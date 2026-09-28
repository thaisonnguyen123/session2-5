create database quan_ly;
use quan_ly;
CREATE TABLE classes (
    class_id VARCHAR(10) PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    school_year VARCHAR(20) NOT NULL
);

CREATE TABLE students (
    student_id VARCHAR(10) PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    gender ENUM('Nam', 'Nu') NOT NULL,
    class_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);
