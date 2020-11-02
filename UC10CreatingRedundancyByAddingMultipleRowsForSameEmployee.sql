/*UC 10 : Ability to make Terissa as part of Sales and Marketing Department*/

use payroll_services;
select * from employee_payroll;
--Add/update data into the table
update employee_payroll set 
PhoneNo=5677893456,
Address='New York',
Department='Sales',
BasicPay=50000,
Deductions=5000,
TaxablePay=45000,
Tax=1000,
NetPay=44000
where EmpName='Teressa';
--Adding Teressa as a part of Marketing dept also
insert into employee_payroll values('Teressa','2019-05-12','F',5677893456,'New York','Marketing',50000,5000,45000,1000,44000);
--Two rows for Teressa is created with different emp id meaning they are two different employee
--If any column is to be updated all rows for the same need need to be updated creating unnecessary redundancy
select * from employee_payroll where EmpName='Teressa';