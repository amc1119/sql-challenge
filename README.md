# sql-challenge

# Data Modeling
* Used CSV files to create an Entity Relationship Diagram of the tables. 

1. Utilized tutoring help to create the ERD. Did not save properly. Completed the ERD a second time on my own.

# Data Engineering
Task: Use the provided information to create a table schema for each of the six CSV files. 
-Used Quick Database Diagrams to generate the code for PostgreSQL. Code resulted in:

* Creating a new database named `EmployeesSQL` to create all queries required for this module.

* Specified all data types, primary keys, foreign keys, and other constraints for this module.

1. Create a `departments` table with a department number and department name.

2. Created a `dept_emp` table with a composite key composed of department number and employee number.

3. Created a `dept_manager` table with a composite key composed of  department number and employee number.

4. Created a `employees` table with a employee number, employee title id, birth date, first name, last name, sex, and hire date.

5. Create a `salaries` table with a foreign key referenfed in the `employees` table. 

6. Create a `titles` table with a title id and title.

7. Populated all tables by importing data from csv files.

# Data Analysis
Created the following queries (listed directly from Module 9 Challenge Instructions):

* A list with the employee number, last name, first name, sex, and salary of each employee.

* A list with  the first name, last name, and hire date for the employees who were hired in 1986.

* LA list with st the manager of each department along with their department number, department name, employee number, last name, and first name.

* A list with  the department number for each employee along with that employee’s employee number, last name, first name, and department name.

* A list with  first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

* A list with  each employee in the Sales department, including their employee number, last name, and first name.

* A list with  each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

* A list with  the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

