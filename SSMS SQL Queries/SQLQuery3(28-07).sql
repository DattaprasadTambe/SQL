select * from employees;

select * from employees where department_id = 9 or department_id = 6 or department_id = 5;

--query to show with particular conditions
select * from employees where salary>10000 and job_id = 5;

--query to show particular records
select * from employees where department_id in (9,8);

--query to show records except some 
select * from employees where department_id not in (1,2,3,4,5);

--to find salary between a range
select * from employees where salary>=10000 and salary<=15000;
select * from employees where salary between 10000 and 15000;

--find all emps who have not given phone no
select * from employees where phone_number is null;
select * from employees where phone_number is not null;

select department_id from employees;

--for unique values
select distinct department_id from employees;

--query to show top records
select top 5 * from employees;