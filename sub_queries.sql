-- 1
SELECT * 
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE employees.emp_no = '101010'
)

-- 2
SELECT title -- or *
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE employees.first_name = 'Aamod'
)

-- 3
SELECT *
FROM dept_manager
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE gender = 'F' AND to_date = '9999-01-01'
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


-- PAY DATA

-- historcical 
SELECT gender, AVG(salary) AS 'historical average salary' 
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
GROUP BY gender

-- current
SELECT gender, AVG(salary) AS 'current average salary' 
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
WHERE to_date > now()
GROUP BY gender

-- historical data for managers
SELECT gender, AVG(salary) AS 'historical average manager salary' 
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
GROUP BY gender

-- current data for managers
SELECT gender, AVG(salary) AS 'current average manager salary' 
FROM salaries
JOIN employees ON salaries.emp_no = employees.emp_no
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > now()
GROUP BY gender


