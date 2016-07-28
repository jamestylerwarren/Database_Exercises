-- 2)
SELECT COUNT(*) FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') GROUP BY gender;

-- 3)
SELECT CONCAT(last_name, ' ', first_name) FROM employees WHERE last_name LIKE ('e%') AND last_name LIKE ('%e') GROUP BY last_name, first_name;

-- 4) 
SELECT last_name, first_name, DATEDIFF(curdate(), hire_date) as time_period FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY time_period DESC, last_name, first_name;

--5)
SELECT last_name, first_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ORDER BY last_name, first_name;