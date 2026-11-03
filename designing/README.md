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