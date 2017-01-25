USE employees;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
SELECT concat(count(*), " ", gender) as "Number by Gender" FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') GROUP BY gender;

# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') AND gender = 'M' ORDER BY last_name, first_name ASC;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT concat(first_name," ", last_name) AS 'Full name' FROM employees WHERE last_name LIKE 'E%e';

# Now reverse the sort order for both queries.
SELECT * FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') ORDER BY last_name DESC;
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT datediff(curdate(), hire_date) FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' ORDER BY birth_date ASC, hire_date DESC;

SELECT concat(first_name, " ", last_name) as "full_name", count(first_name) as "number of people"
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY `number of people` DESC;