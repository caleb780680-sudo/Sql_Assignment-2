
-- =========================================================
-- Employees data 
-- =========================================================

-- Create Database

CREATE DATABASE Employees;
USE Employees;

-- 1. Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Create Location Table
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(30) NOT NULL UNIQUE
);

-- 3. Create Employees Table (with constraints)
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    Employee_name VARCHAR(50) NOT NULL,
    Gender ENUM('M', 'F') NOT NULL,
    Age INT CHECK (Age >= 18),
    Hire_date DATE DEFAULT (CURRENT_DATE),
    Designation VARCHAR(50),
    Salary DECIMAL(10, 2),
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);


INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location_id,location_name) VALUES
(1,'Chennai'),
(2,'Bangalore'),
(3,'Hyderabad'),
(4,'Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);


USE employees;

-- ==========================================
-- Querying data 
-- ==========================================

-- 1. Distinct Values

select distinct salary 
from employees;

show tables ;

-- 2. Alias (AS)

select age AS Employee_Age, salary AS Employee_Salary 
from employees;

-- 3. Where Clause & Operators

select * 
from employees 
where salary > 50000 AND hire_date < '2016-01-01';

-- Find the employee whose designation is missing (NULL) and fill it with "Data Scientist"

update employees 
SET designation = 'Data Scientist' 
where designation IS NULL and employee_id > 0;

-- ==========================================
-- Sorting and Grouping Data
-- ==========================================

-- 1. ORDER BY

select * 
from employees 
order by department_id ASC, salary DESC;

-- 2. LIMIT

select * 
from employees 
where year(hire_date) = 2018 
order by hire_date ASC 
limit 5;


-- 3. Aggregate Functions

select SUM(e.salary) AS total_finance_salary
from employees e
join departments d ON e.department_id = d.department_id
where d.department_name = 'Finance';


select MIN(age) AS min_age 
from employees;

-- 4. GROUP BY

-- List the maximum salary for each location

select location_id, MAX(salary) AS max_salary 
from employees 
group by  location_id;

-- Calculate the average salary for each designation containing the word 'Analyst'

select designation, AVG(salary) AS avg_salary 
from employees  
where designation LIKE '%Analyst%' 
group  by designation;


-- 5. HAVING

select department_id, COUNT(*) AS employee_count 
from employees 
group  bY department_id 
having COUNT(*) < 3;

-- Find locations with female employees whose average age is below 30

select location_id, AVG(age) AS avg_female_age 
from employees 
where gender  = 'F' 
group by location_id 
having avg(age) < 30;

-- ==========================================
-- Joins
-- ==========================================

-- 1. Inner Join

-- List employee names, their designations, and department names where employees are assigned to a department
select e.employee_name, e.designation, d.department_name
from employees e
inner join departments d ON e.department_id = d.department_id;

-- 2. Left Join

-- List all departments along with the total number of employees in each department, including departments with no employees
select d.department_name, COUNT(e.employee_id) AS total_employees
from departments d
left join employees e ON d.department_id = e.department_id
group by d.department_id, d.department_name;

-- 3. Right Join

-- Display all locations along with the names of employees assigned to each location (or NULL if no employees assigned)
select l.location_name, e.employee_name
from employees e
right join location l ON e.location_id = l.location_id; 


