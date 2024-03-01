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


