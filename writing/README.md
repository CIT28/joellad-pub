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