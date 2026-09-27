# 📊 SQL Employees Database & Data Analysis

## 📌 Project Overview

This project demonstrates SQL database creation, data management, querying, aggregation, grouping, and table joins using an **Employees Database**.

The project was created to practice fundamental and intermediate **MySQL concepts**, including database design, constraints, filtering, sorting, aggregate functions, `GROUP BY`, `HAVING`, and different types of joins.

---

## 🗄️ Database Structure

The project uses three main tables:

### 1. Departments

Stores department information.

* `department_id` — Primary Key
* `department_name` — Unique department name

### 2. Location

Stores company location information.

* `location_id` — Primary Key
* `location_name` — Unique location name

### 3. Employees

Stores employee information.

* `employee_id` — Primary Key
* `employee_name`
* `gender`
* `age`
* `hire_date`
* `designation`
* `salary`
* `department_id` — Foreign Key
* `location_id` — Foreign Key

The Employees table uses constraints such as `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`, and `FOREIGN KEY`.

---

## 🛠️ SQL Concepts Covered

### 🔹 Database & Table Creation

* `CREATE DATABASE`
* `USE`
* `CREATE TABLE`
* Primary Keys
* Foreign Keys
* Constraints

### 🔹 Data Insertion

Employee, department, and location records are inserted using `INSERT INTO`. The dataset contains departments such as Software Development, Marketing, Data Science, Finance, IT, Operations, and others.

### 🔹 Data Querying

The project demonstrates:

* `SELECT`
* `DISTINCT`
* Column aliases using `AS`
* `WHERE`
* Comparison operators
* `AND`
* `IS NULL`
* `UPDATE`

Example:

```sql
SELECT DISTINCT salary
FROM employees;
```

---

## 📈 Sorting & Filtering

The project uses:

* `ORDER BY`
* `LIMIT`
* `WHERE`
* Date filtering
* Salary filtering

Example:

```sql
SELECT *
FROM employees
ORDER BY department_id ASC, salary DESC;
```

The project also demonstrates selecting employees hired during a specific year and limiting the result to five records.

---

## 📊 Aggregate Functions

The project demonstrates SQL aggregate functions including:

* `SUM()`
* `MIN()`
* `MAX()`
* `AVG()`
* `COUNT()`

Examples include calculating total Finance salary and finding the minimum employee age.

---

## 📌 GROUP BY & HAVING

The project uses `GROUP BY` to analyze employee information by:

* Location
* Designation
* Department

Example:

```sql
SELECT location_id, MAX(salary) AS max_salary
FROM employees
GROUP BY location_id;
```

`HAVING` is used to filter grouped results, such as departments with fewer than three employees and locations where the average age of female employees is below 30.

---

## 🔗 SQL Joins

The project demonstrates three important SQL joins:

### INNER JOIN

Used to display employee names, designations, and their department names.

```sql
SELECT e.employee_name,
       e.designation,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
```

### LEFT JOIN

Used to display all departments, including departments that have no employees.

### RIGHT JOIN

Used to display all locations and the employees assigned to them, including locations without assigned employees.

---

## 🎯 Key Learning Outcomes

Through this project, I practiced:

* Database creation and management
* Relational database design
* Primary and foreign keys
* SQL constraints
* Data insertion and updating
* Filtering and sorting
* Aggregate functions
* Grouping and conditional grouping
* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Working with dates
* Handling `NULL` values
* Basic employee data analysis

---

## 📁 Project Files

```text
SQL-Employees-Database/
│
├── sql assignment 2.sql
└── README.md
```

---

## 💻 Technologies Used

* **MySQL**
* **SQL**
* Relational Database Concepts

---

## 🚀 How to Run

1. Install MySQL or open MySQL Workbench.
2. Open `sql assignment 2.sql`.
3. Execute the database and table creation queries.
4. Insert the sample data.
5. Run the querying and analysis sections.
6. Review the results in the SQL output window.

---

## 👤 Author

**Caleb**

This project was created as part of SQL/database learning and practice.
