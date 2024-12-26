create database company;
use company;
create table Employees(emp_id int, 
                       emp_name varchar(20),
                       department_id int);
insert into Employees(emp_id,emp_name,department_id)
values(1,"Alice",10),
(2,"Bob",20),
(3,"Charlie",30),
(4,"David",10),
(5,"Eve",40);
select * from Employees;

create table Departments(department_id int,
                         department_name varchar(20));
select * from Departments;

insert into Departments(department_id, department_name)
values(10,"HR"),
(20,"Finance"),
(30,"IT"),
(40,"Admin"),
(50,"Marketing");
select * from Departments;

create table projects(project_id int,emp_id int,project_name varchar(15));
insert into projects(project_id,emp_id,project_name)
values(101,1,"Alpha");
insert into projects(project_id,emp_id,project_name)
values(102,2,"Beta");
insert into projects(project_id,emp_id,project_name)
values(103,3,"Gamma");
insert into projects(project_id,emp_id,project_name)
values(104,4,"Delta");
select * from projects;

#write a query to get employee and department details using join
select e.emp_id,e.emp_name,d.department_id,d.department_name
 from employees e
join departments d
on e.department_id=d.department_id;


#write a query to retrieve all eployees with their departments,even if the department is missing
select e.emp_name, d.department_name
from employees e
right join departments d 
on e.department_id=d.department_id;


#write a query to get department details even if there are no employees in that department
select e.emp_name,e.department_id,d.department_name
from employees e
right join departments d
on e.department_id=d.department_id;


#write a query to get all employees and departments,whether matched or not
select * from employees
join departments on 
employees.department_id=departments.department_id;


#JOIN three tables (Employees, Departments, Projects) to get employee, department, and project information.
select emp_name,department_name,project_name
from employees e
left join departments d
on e.department_id=d.department_id
left join projects p 
on e.emp_id=p.emp_id;


#Find employees who are not assigned to any projects.
select emp_name 
from employees e
left join projects p
on e.emp_id=p.emp_id
where p.project_id is null;


#Find departments with no employees using a RIGHT JOIN. 
select department_name from employees e 
right join departments d
on e .department_id=d.department_id
where emp_name is null;


#Write a query to get Employee and Department details using join with aliases. 
select e.emp_id, e.emp_Name,e.department_id,d.department_name
from employees e
inner join departments d
on e.department_id = d.department_id;


#Write a query to find projects managed by employees in the 'IT' department.  
select project_name 
from employees e
join departments d 
on e.department_id=d.department_id
join projects p
on e.emp_id=p.emp_id
where department_name='IT';


#Write a query to show employees and their project information (even if not assigned to a project).
select emp_name,project_name
from employees e
left join projects p
on e.emp_id=p.emp_id;


#Find employees who work in departments with names starting with 'A'. 
select emp_name,department_name
from employees e
join departments d
on e.department_id=d.department_id
where d.department_name like "A%";


#Find the total number of employees in each department using GROUP BY and JOIN
select department_name,count(emp_name) as "Total Employees"
from employees e 
right join departments d
on e.department_id=d.department_id
group by department_name;


#get the list of departments with more than one employee. 
select department_Name,count(emp_name) as "Total Emp"
from employees e
join departments d 
on e.Department_ID = d.Department_ID
group by department_Name
having count(emp_id) > 1;