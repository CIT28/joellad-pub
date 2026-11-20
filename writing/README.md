# Writing Part 1

## INSERT INTO

- Commands for manipulating data in a table
    - Create - inserting data
    - Read - query
    - Update - change
    - Delete- remove

- MFA tracks artwork in a collections table

    - Museum of fine art. When a id number is not specified, the system automatically uses the next highest number. If a row is deleted, the id number remains unused.

- How INSERT INTO works: Works by adding information into a database.
    - INSERT INTO "table" ("column1", "column2") VALUES ('value1', 'value2');

- Why title and accession_number cannot be NULL
    - These items are required as a reference. If there is no title, then there is no title, there is no item to be discusssed.
- Why accession_number must be UNIQUE
    - Accession_number can become confused get if it is not unique.

## Importing CSV

-   CSV = Comma Separated Values
    - importing CSV files provide the needed information in a format that can be easily utilized.
    RM = Remove : rm mfa.db

    .import is a SQL command. We created a table then imported the CSV
    .import --csv -- skip 1 is the command. --csv lets the system know that the file is a csv and -- skip 1 says to skip the header row. the table does not need quotes because it is a SQLite command

    .import --csv --skip 1 mfa.csv collections