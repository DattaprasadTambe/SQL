update employees set salary = salary+10000 from employees e inner join departments d 
on e.department_id = d.department_id where department_name = 'Executive';

select * from employees e1 where salary >= (select avg(salary) from employees e2
where e2.department_id = e1.department_id);

select top(6) * from employees order by salary desc;

SELECT TOP 1 salary FROM 
( SELECT DISTINCT TOP 5 salary
FROM employees ORDER BY salary DESC ) 
as temp  ORDER BY salary;

select distinct salary from employees
order by salary desc offset 4 rows fetch next 1 row only;

select * from employees e1 
where 5 = (select count(distinct(salary)) 
from employees e2
where e2.salary >= e1.salary);



