USE employees;

# List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

# Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees. Their names should be:
SELECT first_name, last_name FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' ORDER BY birth_date ASC, hire_date DESC LIMIT 5;

# Try to think of your results as batches, or sets. The first five results are your first batch. The five after that would be your second batch, etc. Update the query to find the tenth batch of results. The employee names should be:
SELECT * FROM employees LIMIT 5 OFFSET 45;