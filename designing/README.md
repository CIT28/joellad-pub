# Week 12 Attendance

-   Answer how can we reference the different version of the longlist.db without copying it to the designing folder?

Answer :  My guess is to use a back slash, similar to a website. 
sqlite3 ps0/cyberchase.db < p4-q.sql

Correct Answer:  - bash command (for reference): 
sqlite3 ../querying/longlist.db < w12-q.sql

../ exits the designing folder.
The terminal must be in the BASH designing folder to pull database. 

# Designing Part 1


## Overview

Overview
Designing is the structure in which a database is developed. Databases or tables within them are created using the command CREATE TABLE. Unlike a JOIN or NESTED query, the resulting information will generate a new table. Table will have between (1) and many connections to additional tables. 

    sqlite3 week0/longlist.db
    SELECT "author", "title" FROM "longlist" LIMIT 5;
       
    sqlite3 week1/longlist.db

.schema is a sqlite command that provides the *** statement used to create the table. *** 

.schema books (pulls the schema for the table "books" )

.quit
.exit

## MTBA

Massachusetts Bay Transportation Authority is a table created in order to track riders within Massachusetts. The skeleton (schema) created included a primary key (id) rider name, station, action, cost and remaining balance. These columns show a general overview of any (1) rider's trip, but does not contain valuable data like date, full name, return, persons per station a day, etc..

Normalization is then used to gather this information.

## Normalization

Normalization is used to improve the design of a database. Normalizing involves separating content into multiple tables to reduce redundancies. Additional columns or information within each table should be specific to the individual table.

## Storage Classes - The classes, and how a data type differs from a storage class. Start this around 27:35.

Storage Classes:
-   Null: Means no value. Nothing is there
-   Integer:  Means a Whole number
-   - 7 different data types. 0,1,2,3,4,6,8     

-   Real: Decimals 1.2 or 2.4 
-   Text: Characters
-   Blob: Binarey large Object. Like imaginaing and audio files

Data Types differ from Storage Classes in that Storage Classes "hold" data types.
7 different data types. 0 byte integer,1,2,3,4,6,8    

## My Answer — do we need to specify data types in our schema?
-   No Sqlite determines which data type is used. Only storage class must be identified.

## Examples and Understanding — the examples from the lecture and your understanding of the tradeoff. Add a bit of your own research if it helps.
$0.10 must be stored as a text due to the dollar sign. 10 would be stored as a integer number. .10 would be used as a real number.

Text cannot be added like math so in instances where the table will be used to determine usage, text is not a good selection.

Using Real numbers can result in inaccurate results due numbers trailing the decimal.

Integers however would not work for this situation and the quantity being used is cents.

## Type Affinities — what they are, and how they differ from storage classes.

Individual columns can be made to store certain storage classes. In sqlite there are 5 affinity types. Type affinities pertain to individual columns. A column will convert the data added to the infinity of the column.  

Text
Numeric
Integer
Real
BLOB


## For Example — after the lecture example, write your own example of how type affinities work.

For example, placing a Real number .10 in to a column with a integer affinity will result in the number becoming 10 and treated as an interger moving forward.

## Boolean

I had not previously heard of boolean. It is a math term commonly used to represent true or false. It can also be used to set a condition like greater than or less than which also leads the reader to claim whether the statement is one that is true or one that is false.

## Table Constraints

I do not specificially hear contraints. Constraints are placed on the data based on the column affinity. INTEGER serves the same purpose as Bool in sqlite in that the answer will be 1 or 0. Constraints are placed on the table by the creator who specifies the storage classes.

Covered at 46:33. Constraints covered are Primary & Foreign Keys but these are not the only constraints.  

Primary keys - must be unique and cannot repeat. A Foreign key must have a value within another table to meet the constraint.

Sqlite automatically creates a Primary Key which is called *** row id *** RowID cannot be seen within the table but can be used within a query to identify needed data. 

*** Below is an example of creating a table where there is a Joint Primary Key. This constraint requires every combination to be unique. ***

```
CREATE TABLE "visits" (
    "rider_id" INTEGER,
    "station_id" INTEGER,
    PRIMARY KEY("rider_id", "station_id")
);
``` 

# Designing Part 2

## Column Constraints

-   CHECK: Places a constraint to where the column will "check" to ensure a condition is met.

-   DEFAULT:  A default value is used when a new row is added without a value.

-   NOT NULL:  Ensures that an empty value is not in 

-   UNIQUE:  Ensures that every row has a unique value.


## Constraints: Primary Key and Foreign Key

Not that when column constraints are applied, they take place inside of the coma (,) and after the storage class. 

NOT NULL is unnessesary to use for Primary and Foreign ID's because the Table Constraint ensures that a value is applied. A unique value is also unnessesary for primary and foreign keys because they must be unique in nature. 

```
-- CREATE TABLE "riders" (
--     "id" INTEGER,
--     "name" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );
```

```
-- CREATE TABLE "stations" (
--     "id" INTEGER, 
--     "name" TEXT NOT NULL UNIQUE,
--     "line" TEXT NOT NULL
--     PRIMARY KEY("id")
);
```

## Altering Tables

- DROP TABLE
- ALTER TABLE - ALTER TABLE "visits"
- DROP COLUMN
- RENAME TO 
- RENAME COLUMN TO
- ADD COLUMN

ALTER TABLE "visits" RENAME TO "swipes";

Carter showed an example where Type was misspelled, but I typed it correctly. This resulted in an error when trying to drop the "type" which was TEXT 

```
sqlite> ALTER TABLE "swipes" DROP COLUMN "type";
Parse error near line 13: no such column: ""type""
  ALTER TABLE "swipes" DROP COLUMN "type";
                     error here ---^
```


# Summary

A table cannot be dropped if a primary or foreign key was being referenced. By default, SQLite is Numeric.

There are several constraints that can be used within a table but is unnecessary when dealing with keys. There are also many ways to update table columns, names, types which can include dropping the table all together.