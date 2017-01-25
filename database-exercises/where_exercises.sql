USE employees;

# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';

# Employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

# Employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';

# Employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

# Employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';