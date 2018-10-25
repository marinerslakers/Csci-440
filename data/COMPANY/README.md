You can load the following data from the CSVs in the COMPANY folder with the
`load-data.sql` script.  To load, first start sqlite:

    $ sqlite3 company.db

From the sqlite shell run the load data script

    > .read load-data.sql

If all goes correctly, you will see the following tables:

    > .table
    Department     Dept_location  Project
    Dependent      Employee       Works_on



