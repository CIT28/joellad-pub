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

    ## Deletion

    -   Deleting can be completed by row using the WHERE clause. Forgetting to use this clause will result in the table being deleted. When transferring data (.import) from CSV files do not transfer with NULL fields because the information is initially converted to text, so the NULL value will have to be added.

    -   When selecting to delete, you must remove the * (all) clause as you do not wish to delete ALL but ONLY so DELETE FROM is the command to be used.

    -   I deleted then reimported the table so unsure why I had some rows missing, I assume that was a version update.

    ## Foreign Key Constraints

    -   A table with a primary key that is referrenced by another table. When this table is deleted, it effects the integrity of the related table. This can result in relationships missing. 

    This causes a foreign key constaint error 

    .print 'foreign key constraint error'
DELETE FROM "artists" WHERE "name" = 'Unidentified artist';

```
Error near line 6: FOREIGN KEY constraint failed
```

In order to correct this, delete the foreign key affiliation first.

```
-- .print 'delete foreign key affiliation of UA'
-- DELETE FROM "created" WHERE "artist_id" = (
--     SELECT "id" FROM "artists" WHERE "name" = 'Unidentified artist'
-- );
-- SELECT * FROM "created";
```

```
-- .print 'foreign key constraint error'
-- -- DELETE FROM "artists" WHERE "name" = 'Unidentified artist';
-- SELECT * FROM "artists";
```