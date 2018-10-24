drop table if exists Department;
drop table if exists Dependent;
drop table if exists Dept_location;
drop table if exists Employee;
drop table if exists Project;
drop table if exists Works_on;

.mode csv
.import COMPANY/DEPARTMENT.csv     Department
.import COMPANY/DEPENDENT.csv      Dependent
.import COMPANY/DEPT_LOCATION.csv  Dept_location
.import COMPANY/EMPLOYEE.csv       Employee
.import COMPANY/PROJECT.csv        Project
.import COMPANY/WORKS_ON.csv       Works_on

update Employee set Super_ssn = null where Super_ssn = 'NULL';
update Works_on set Hours = null where Hours = 'NULL';

.mode column
