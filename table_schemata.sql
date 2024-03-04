Employees
-
emp_no PK int
emp_title_id char(5) FK >- Titles.title_id
birth_date date
first_name varchar(30)
last_name varchar(30)
sex char(1)
hire_date date

Titles
-
title_id PK char(5)
title varchar(30)

Departments
-
dept_no PK char(4)
dept_name varchar(30)

Dept_Emp
-
emp_no int FK >- Employees.emp_no
dept_no char(4) FK >- Departments.dept_no

Dept_Manager
-
dept_no char(4) FK >- Departments.dept_no
emp_no int FK >- Employees.emp_no

Salaries
-
emp_no int FK >- Employees.emp_no
salary int
