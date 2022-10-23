SELECT emp_no, first_name, last_name 
FROM employees;

SELECT title, from_date, to_date
FROM titles;

SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

DROP TABLE retirement_titles;

SELECT * FROM retirement_titles;

--Select only distinct 
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles;

DROP TABLE unique_titles;

--retrieve the number of employees by their most recent job title who are about to retire.
SELECT DISTINCT title
FROM unique_titles;

SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY Count(title) DESC;

SELECT * FROM retiring_titles;

--Deliverable 2 module 7 Challenge
SELECT emp_no, first_name, last_name, birth_date 
FROM employees;

SELECT from_date, to_date 
FROM dept_emp;

SELECT DISTINCT ON (title)title From titles;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title 
INTO Mentorship_Eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (de.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31' )
ORDER BY e.emp_no;

SELECT * FROM Mentorship_Eligibility;




