/* UC 3 : Ability to insert data into the table */

/*  Using the payroll_service DB */
use payroll_services;
/* Creating a table */
create table employee_payroll
(EmpID int not null identity(1,1) primary key,
EmpName varchar(150) not null,
Salary float not null,
StartDate date not null
);
/* Inserting data into table */
insert into employee_payroll(EmpName,Salary,StartDate) values
('Bill',30000,'2020-03-28'),
('Teressa',40000,'2019-05-12'),
('Jonas',50000,'2019-02-13'),
('Fury',45000,'2020-06-04');
/* Select all columns */
select * from employee_payroll;
