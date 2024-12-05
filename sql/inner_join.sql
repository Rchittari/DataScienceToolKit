### Question:
You have two tables:

**Employees**
| employee_id | first_name | last_name | department_id |
|-------------|------------|-----------|---------------|
| 1           | John       | Doe       | 101           |
| 2           | Jane       | Smith     | 102           |
| 3           | Alice      | Johnson   | 101           |
| 4           | Bob        | Brown     | 103           |

**Departments**
| department_id | department_name |
|---------------|-----------------|
| 101           | Sales           |
| 102           | Marketing       |
| 103           | IT              |

### Task:
Write an SQL query to list the `employee_id`, `first_name`, `last_name`, and `department_name` for all employees, using an `INNER JOIN` between the `Employees` and `Departments` tables.

### Expected Output:
| employee_id | first_name | last_name | department_name |
|-------------|------------|-----------|-----------------|
| 1           | John       | Doe       | Sales           |
| 2           | Jane       | Smith     | Marketing       |
| 3           | Alice      | Johnson   | Sales           |
| 4           | Bob        | Brown     | IT              |

Try to write the SQL query to solve this!


SQL:


SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.department_id = d.department_id;
