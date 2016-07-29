-- 1
SELECT dept_name AS `Department Name`, CONCAT(first_name, ' ', last_name) AS `Department Manager`
FROM departments
JOIN dept_manager 
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE to_date > curdate();

-- 2
SELECT dept_name AS `Department Name`, CONCAT(first_name, ' ', last_name) AS `Manager Name`
FROM departments
JOIN dept_manager 
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE (to_date > curdate()) AND gender = 'F';

-- 3
SELECT title AS 'Title', count(*) AS 'Count'
FROM titles
JOIN employees 
ON employees.emp_no = titles.emp_no
AND titles.to_date = '9999-01-01'
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
AND dept_emp.to_date = '9999-01-01'
JOIN departments 
ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'customer service' 
GROUP BY title

-- 4
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Name', salary AS 'Salary' 
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no
JOIN salaries
ON salaries.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
AND salaries.to_date = '9999-01-01'
