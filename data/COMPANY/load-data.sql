drop table if exists Department;
drop table if exists Dependent;
drop table if exists Dept_location;
drop table if exists Employee;
drop table if exists Project;
drop table if exists Works_on;

.mode csv
.import DEPARTMENT.csv     Department
.import DEPENDENT.csv      Dependent
.import DEPT_LOCATION.csv  Dept_location
.import EMPLOYEE.csv       Employee
.import PROJECT.csv        Project
.import WORKS_ON.csv       Works_on

update Employee set Super_ssn = null where Super_ssn = 'NULL';
update Works_on set Hours = null where Hours = 'NULL';

.mode column
