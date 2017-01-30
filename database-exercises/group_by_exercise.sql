use employees;

SELECT DISTINCT title FROM titles ORDER BY title;

# Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
SELECT last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY last_name;
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY last_name, first_name;

# Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY. Your results should be:
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT concat(e.first_name, ' ', e.last_name) as full_name,
  d.dept_name,
  s.salary
FROM employees as e
  JOIN dept_emp ON e.emp_no = dept_emp.emp_no
  JOIN departments as d ON dept_emp.dept_no = d.dept_no
  JOIN salaries as s ON e.emp_no = s.emp_no
WHERE d.dept_name = 'Development' AND s.to_date = '9999-01-01';

# shows each department along with the name of the current manager for that department.
SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as full_name
FROM employees AS e
  JOIN dept_manager as dm ON e.emp_no = dm.emp_no
  JOIN departments as d ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) as full_name
FROM employees AS e
  JOIN dept_manager as dm ON e.emp_no = dm.emp_no
  JOIN departments as d ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as Title, count(Title) as Count
FROM employees AS e
  JOIN titles AS t ON e.emp_no = t.emp_no
  JOIN dept_emp AS de ON e.emp_no = de.emp_no
  JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01' GROUP BY title;

# Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as Name, s.salary
FROM employees AS e
  JOIN salaries AS s ON e.emp_no = s.emp_no
  JOIN dept_manager as dm ON s.emp_no = dm.emp_no
  JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE s.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
ORDER BY salary;

# Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT concat(e.first_name, ' ' , e.last_name) AS Employee, d.dept_name as Department, concat(managers.first_name, ' ', managers.last_name)
FROM employees AS e
  JOIN dept_emp AS de ON e.emp_no = de.emp_no
  JOIN dept_manager AS dm ON de.emp_no = dm.emp_no
  JOIN departments AS d ON dm.dept_no = d.dept_no
  JOIN employees as managers ON dm.emp_no = managers.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';