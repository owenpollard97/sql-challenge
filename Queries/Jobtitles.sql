-- Drop the existing titles table if needed
DROP TABLE IF EXISTS titles;

-- Create the titles table
CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);
copy titles from 'C:\BootCamp\AllHW\sql-challenge\Starter_Code\data\titles.csv' with csv header;
SELECT * FROM titles