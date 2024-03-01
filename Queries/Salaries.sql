-- Drop the existing salaries table if needed
DROP TABLE IF EXISTS salaries;

-- Create the salaries table
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT
);

copy salaries from 'C:\BootCamp\AllHW\sql-challenge\Starter_Code\data\salaries.csv' with csv header;
select * from salaries