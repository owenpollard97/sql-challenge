SELECT d.dept_no AS department_number, e.emp_no AS employee_number, e.last_name, e.first_name, d.dept_name AS department_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;