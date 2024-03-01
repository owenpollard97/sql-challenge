--Question 1
-- Drop the employees table if it exists
DROP TABLE IF EXISTS employees;

-- Create the employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex CHAR,
    hire_date DATE
);

-- Insert sample data into the employees table
INSERT INTO employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
VALUES 
(1, 's0001', '1990-01-15', 'John', 'Doe', 'M', '2020-05-10'),
(2, 'e0002', '1985-07-20', 'Jane', 'Smith', 'F', '2018-09-25'),
(3, 'e0003', '1978-03-12', 'Michael', 'Johnson', 'M', '2015-11-30');

COPY employees(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date) 
FROM 'C:\BootCamp\AllHW\sql-challenge\Starter_Code\data\employees.csv' DELIMITER ',' CSV HEADER;

SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date FROM employees;


--Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--Question 3
SELECT dm.dept_no AS department_number, d.dept_name AS department_name, e.emp_no AS employee_number, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no::int = e.emp_no;

--Question 4
-- Drop the existing dept_emp table if needed
DROP TABLE IF EXISTS dept_emp;

-- Create the dept_emp table with emp_no and dept_no columns
CREATE TABLE dept_emp (
    emp_no integer,
    dept_no varchar
);

-- Load data into the dept_emp table from CSV
COPY dept_emp FROM 'C:\BootCamp\AllHW\sql-challenge\Starter_Code\data\dept_emp.csv' WITH CSV HEADER;

-- Select data from the departments table
SELECT * FROM dept_emp;



--Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--Question 6
SELECT e.emp_no AS employee_number, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--Question 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name AS department_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--Question 8
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;