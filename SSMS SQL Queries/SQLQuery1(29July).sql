select * from employees where phone_number is null;

--sort with a particular column
select * from employees order by first_name;

-- order by clause
select * from employees where department_id = 9 order by salary;
select * from employees where department_id = 6 order by job_id, first_name;

--Like clause
select * from employees where first_name like 'D%';
select * from employees where last_name like '%a';
select * from employees where first_name like 'S%a';

--aggregate functions
select max(salary) as 'Max salary' from employees where department_id = 6;
select min(salary) as 'Min salary' from employees where department_id = 6;
select sum(salary) as 'Salary' from employees where department_id = 5;
select avg(salary) as 'AVG Salary' from employees where department_id = 5;
select COUNT(salary) as 'Salary count' from employees;
select count(*) as 'all counts' from employees;

--Group by clause
select max(salary) from employees group by department_id;
select sum(salary) from employees group by department_id;
select department_id, min(salary) from employees group by department_id;
select department_id, count(*) from employees group by department_id;

--having clause
select department_id, COUNT(*) from employees group by department_id having COUNT(*) >=5;
select department_id, max(salary) from employees group by department_id having max(salary)>=10000;
select department_id, avg(salary) from employees group by department_id having AVG(salary) >=10000;

--sub query -query within a query
select * from employees where department_id = (select department_id from departments where department_name='IT');

select * from employees;
-- prgrammer as a job title
select * from employees where job_id = (select job_id from jobs where job_title ='Programmer');

-- list all the students who are trained under trainer deepa
--when there are more than one value returns we must use in
--select * from student where batchid in (select batchid from batch where tid = select tid f)