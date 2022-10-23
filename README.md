# Pewlett-Hackard-Analysis
A repo containing SQL Queries

### Overview of the analysis
Determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program

### Results

1. Amongst the retiring titles are 25,916 Senior Engineers and 24,926 Senior Staff, which accounts to a huge portion of the workforce retiring.
2. This could deeply impact any in-flight projects at that time.
3. Also looking at the manager_info table if you filter on employees that are still present, to_date = '9999-01-01', you get only 9 managers
4. If 2 of these managers are also going to be retiring soon, it can have a deep impact.
5. Out of total employees approx. 300K there are only 1549 employees eligible for mentorship. 

### Summary
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
The table: "retiring_titles", gives an insight into how many employees are retiring with which titles.

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

If you look at tables retirement_titles and mentorship_eligibility

It gives you information on how many people are retiring by titles.
For the mentorship_eligibility table, 
you can get a count of how many mentors are available for which title.
Queries:<Code Block>
SELECT * FROM Mentorship_Eligibility;

SELECT COUNT(emp_no), title FROM Mentorship_Eligibility
GROUP BY title;
</Code Block>
Below are images for reference
Image 1: Retiring titles with count
Image 2: How many mentors are available for each title.

For around 25K Senior Engineers retiring, the company needs to hire that many new Senior engineers, but then they have 529 mentors available.
But then for 24K Senior Staff retiring there are only 147 Senior Staff mentors available. That could be a problem.









