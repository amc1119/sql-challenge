-- 1.
SELECT 
	e.emp_no,
	e.last_name, 
	e.first_name, 
	e.sex,
	s.salary
FROM employees e
RIGHT JOIN salaries s
ON s.emp_no = e.emp_no;

-- 2.
SELECT 
	e.first_name, 
	e.last_name,
	e.hire_date
FROM employees e
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- 3.
SELECT
	d.dept_no,
	d.dept_name,
	m.emp_no AS manager_emp_no,
	e.first_name,
	e.last_name
FROM departments d
	JOIN dept_manager m
	ON (m.dept_no = d.dept_no)
		JOIN employees e
		ON (e.emp_no = m.emp_no);

-- 4.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_no,
	d.dept_name
FROM employees e
	JOIN dept_emp de
	ON (de.emp_no = e.emp_no)
		JOIN departments d
		ON (d.dept_no = de.dept_no)
ORDER BY 1;

-- 5.
SELECT 
	e.first_name,
	e.last_name,
	e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

-- 6.
SELECT 
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM employees e
	JOIN dept_emp de
	ON (de.emp_no = e.emp_no)
		JOIN departments d
		ON (d.dept_no = de.dept_no)
		WHERE d.dept_name = 'Sales';

-- 7.
SELECT 
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM employees e
	JOIN dept_emp de
	ON (de.emp_no = e.emp_no)
		JOIN departments d
		ON (d.dept_no = de.dept_no)
		WHERE d.dept_name = 'Sales'
		OR d.dept_name = 'Development';
		
-- 8.
SELECT last_name AS employee_last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY 2 DESC;
