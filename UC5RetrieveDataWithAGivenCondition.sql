/*UC 5 : Ability to retrieve salary data for a particular employee
 as well as employees who joined in a particular date range*/

 use payroll_services;
 /*Retrieve salary data for employee Teressa*/
 select EmpId,EmpName,Salary from employee_payroll where EmpName='Teressa';
 /*Retrieve data of employees who joined in the given data range*/
 select * from employee_payroll where StartDate between cast('2020-01-01' as date) and cast(getdate() as date);