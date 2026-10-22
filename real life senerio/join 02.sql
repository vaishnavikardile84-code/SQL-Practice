-- show databases;
-- use joins;
-- show tables;
create table employee ( Emp_id int primary key  auto_increment 
, Emp_Name VARCHAR(90) , Dept_id INT ,  Salary Decimal(10.2));

INSERT INTO Employee (Emp_ID, Emp_Name, Dept_ID, Salary) 
VALUES (1, 'Amit', 101, 30000), (2, 'Priya', 102, 40000), (3, 'Rahul', 101, 35000), (4, 'Sneha', 103, 45000), (5, 'Karan', NULL, 25000);
CREATE TABLE Department ( Dept_ID INT PRIMARY KEY, Dept_Name VARCHAR(50) );
INSERT INTO Department (Dept_ID, Dept_Name) VALUES 
(101, 'IT'), (102, 'HR'), (103, 'Finance'), (104, 'Marketing');

DESC employee;
DESC Department;

ALTER TABLE employee ADD constraint add_fk foreign key (Dept_id) references department(Dept_id) ;

SELECT emp_name , dept_name from employee as A inner JOIN department as B ON A.dept_id = B.dept_id;
select * from employee;
select * from department;

SELECT emp_name  from employee as A 
inner JOIN department as B ON A.dept_id = B.dept_id WHERE dept_name = "IT";

SELECT emp_name , dept_name , salary  from employee as A 
inner JOIN department as B ON A.dept_id = B.dept_id order by salary desc;

SELECT emp_name , dept_name from employee as e 
RIGHT JOIN department as b ON e.dept_id = b.dept_id;

SELECT distinct dept_name from employee as A 
inner JOIN department as B ON A.dept_id = B.dept_id ; 

SELECT dept_name, count(emp_id) from employee as A 
inner JOIN department as B ON A.dept_id = B.dept_id GROUP BY dept_name; 

SELECT d.dept_name from department as d 
 left JOIN employee as e ON d.dept_id = e.dept_id where 
e.emp_id is NULL;


SELECT  e.emp_name , d.dept_name , e.salary 
from employee as e 
INNER JOIN department as d 
ON d.dept_id = e.dept_id 
where e.salary > ( select avg(Salary) from employee);

SELECT count(emp_name) , max(salary) , d.dept_name
FROM employee AS e
INNER JOIN department AS d
ON e.dept_id = d.dept_id group by depT_name ; 


