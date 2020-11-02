/*UC 9 : Ability to extend employee_payroll table to have Basic Pay,Deductions,Taxable Pay,Income Tax, Net Pay*/

use payroll_services;
select * from employee_payroll;
--Dropping Salary column from employee_payroll table
alter table employee_payroll 
drop column Salary;
--Adding new columns
alter table employee_payroll add
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float;
