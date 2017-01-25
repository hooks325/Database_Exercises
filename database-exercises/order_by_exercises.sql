USE employees;

#Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
SELECT * FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') AND gender = 'M' ORDER BY first_name ASC;

# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') AND gender = 'M' ORDER BY last_name, first_name ASC;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no ASC;

# Now reverse the sort order for both queries.
SELECT * FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') ORDER BY last_name DESC;
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' ORDER BY birth_date ASC, hire_date DESC;