-- Lab 1: Students Table
CREATE TABLE students (
    Roll_no INT PRIMARY KEY,
    Name VARCHAR(50),
    Course VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO students (Roll_no, Name, Course, Age, City) 
VALUES
(101, 'Subir', 'MCA', 25, 'Guwahati'),
(102, 'Tarali', 'Journalism', 26, 'Mumbai'),
(103, 'Thakur', 'BBA', 25, 'Kolkata'),
(104, 'Subu', 'MCOM', 25, 'Hyderabad'),
(106, 'Gray', 'MCOM', 30, 'Hyderabad'),
(105, 'Sweety', 'B.Ed', 23, 'Vizag');

SELECT * FROM students;
SELECT DISTINCT Course FROM students;
SELECT * FROM students WHERE Age > 23;
SELECT * FROM students ORDER BY Age DESC;
