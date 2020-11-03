/*UC 12 : Ensuring all retrieve queries are working fine with new table structure*/

use payroll_services;
select * from company;
select * from employee;
select * from payroll;
select * from department;
select * from employee_dept;

--UC 4 working
select e.EmpId,e.EmpName,e.Gender,e.PhoneNo,e.Address,e.StartDate,p.NetPay,d.DeptName
from employee e,payroll p,department d,employee_dept ed
where e.EmpId=p.EmpId and ed.EmpId=e.EmpId and ed.DeptId=d.DeptId;

--UC 5 working
select e.EmpId,e.EmpName,p.BasicPay,p.Deductions,p.TaxablePay,p.Tax,p.NetPay
from employee e,payroll p
where e.EmpName='Teressa' and e.EmpId=p.EmpId;

--UC 7
select e.Gender,
count(e.EmpId) as EmpCount,
min(p.NetPay) as MinSalary,
max(p.NetPay) as MaxSalary,
sum(p.NetPay) as SalarySum,
avg(p.NetPay) as AvgSalary
from employee e,payroll p
 where e.EmpId=p.EmpId group by Gender;
 select * from payroll;


