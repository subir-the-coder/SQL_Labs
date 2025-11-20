CREATE TABLE Employees(
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
SELECT Name, LOWER(Name) AS LowerName FROM Employees;
SELECT Name, LENGTH(Name) AS NameLength FROM Employees;

SELECT Name, SUBSTRING(Name, 1, 5) AS ShortName FROM Employees;

SELECT CONCAT(Name, '-', Department) AS EmployeeInfo FROM Employees;

-- ABS function
SELECT ABS(-450) AS AbsoluteValue;
SELECT ABS(-450.67) AS AbsoluteValue;
SELECT ABS(+450.67) AS AbsoluteValue;

-- Round function
SELECT Salary, ROUND(Salary, 3) AS RoundedSalary FROM Employees;

-- CEIL () Round Up
SELECT CEIL(52.34);
SELECT CEIL(52.02);
SELECT CEIL(51.99);


-- FLOOR() - round down to lower integer
SELECT FLOOR(52.34);

SELECT MOD(Salary, 10000) AS SalaryRemainder FROM Employees;


-- DATE functions
-- CRRENT_DATE/SYSDATE

SELECT CURRENT_DATE as Today;

-- YEAR(), MONTH(), DAY(),
SELECT Name, HireDate, YEAR(HireDate) AS YearJoined, MONTH(HireDate) AS MonthJoin FROM Employees;


SELECT Name, HireDate, YEAR(HireDate) AS YearJoined, MONTH(HireDate) AS MonthJoin, DAY(HireDate) as DayJoined FROM Employees;

-- DATEDIFF() - Difference between two dates

SELECT Name, DATEDIFF(CURRENT_DATE, HireDate) AS DaysWorked FROM Employees;

-- DATE_ADD/DATE_SUB
SELECT Name, DATE_ADD(HireDate, INTERVAL 1 YEAR) AS ApprisalDate FROM Employees;

SELECT Name, DATE_ADD(HireDate, INTERVAL 2 YEAR) AS ApprisalDate FROM Employees;

SELECT Name, DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR) AS DemotionDate FROM Employees;

-- aggregate function
-- sum

SELECT SUM(Salary) as TotalSalary FROM Employees;

-- Average
SELECT AVG(Salary) as AVSalary from Employees;

-- Max function
SELECT MAX(Salary) as HighestSalary FROM Employees;

-- Min function
SELECT MIN(Salary) as LowestSalary FROM Employees;

-- Count
SELECT Count(*) AS TotalEmployees FROM Employees;

-- Finding Department wise average Salary
SELECT Department , AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department;

SELECT Department , count(*) AS Emp, AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department;
