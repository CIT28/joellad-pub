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