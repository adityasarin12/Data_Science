use sharda;

SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;

SELECT e.dept_id, d.dept_name, SUM(e.salary) AS Total_Salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY e.dept_id, d.dept_name;

SELECT category_id, COUNT(*) AS Total_Products
FROM products
GROUP BY category_id
ORDER BY category_id DESC;

SELECT d.dept_name AS Department, MIN(e.salary) AS Lowest_Salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Full_Name,
       d.dept_name AS Department,
       e.salary AS Salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > 60000
ORDER BY e.salary ASC;

SELECT p.category_id AS category_id,
       c.category_name AS Category_Name,
       COUNT(*) AS Total_Products
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY p.category_id, c.category_name
HAVING COUNT(*) > 1;
