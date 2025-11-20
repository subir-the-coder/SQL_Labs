-- Lab 2: Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    HireDate DATE
);

INSERT INTO Employees VALUES
(101, 'Subir', 'IT', 52000, '2025-01-01'),
(102, 'Gray Code', 'HR', 42000, '2021-03-20'),
(103, 'Sweety', 'FINANCE', 72000, '2019-07-10'),
(104, 'Sneha Dey', 'IT', 58000, '2022-10-05'),
(105, 'Subhasish', 'MARKETING', 49000, '2023-01-12');

SELECT * FROM Employees;
SELECT Name, UPPER(Name) AS UpperName FROM Employees;
SELECT Salary, ROUND(Salary, 2) AS RoundedSalary FROM Employees;
SELECT CEIL(52.34), FLOOR(52.34);
