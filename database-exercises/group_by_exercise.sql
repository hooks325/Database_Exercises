use employees;

SELECT DISTINCT title FROM titles ORDER BY title;

# Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
SELECT last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY last_name;
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY last_name, first_name;

# Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY. Your results should be:
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';