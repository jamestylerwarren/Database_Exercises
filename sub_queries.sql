-- 1
SELECT * 
FROM employees
WHERE employees.hire_date IN (
	SELECT employees.hire_date
	FROM employees
	WHERE employees.emp_no = '101010'
)

-- 2
SELECT title -- or *
FROM titles
WHERE titles.emp_no IN (
	SELECT employees.emp_no
	FROM employees
	WHERE employees.first_name = 'Aamod'
)

-- 3
SELECT *
FROM dept_manager
WHERE dept_manager.emp_no IN (
	SELECT employees.emp_no
	FROM employees
	WHERE employees.gender = 'F' AND to_date = '9999-01-01'
)

-- BONUS
SELECT dept_name
FROM departments 
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F' 	
	)
	AND to_date = '9999-01-01'
)