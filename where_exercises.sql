SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE ('e%') AND last_name LIKE ('%e');

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';