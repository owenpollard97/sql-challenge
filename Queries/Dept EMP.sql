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