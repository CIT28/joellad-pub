-- starting the pow workflow
-- changes terminal output for readability 
.mode box
  
-- changes terminal output from standard output (stdout) to pow.txt file
.output '| cat >> pow-p1.txt'
  
-- updates the pow.txt with content in single quotes
-- .print 'first query'  
  
-- SQL command (query) to view all the column contents in the longlist table   
-- Copy your SQL command below here
-- .print 'MFA Creation'  
-- CREATE TABLE "collections" (
--     "id" INTEGER,
--     "title" TEXT NOT NULL,
--     "accession_number" TEXT NOT NULL UNIQUE,
--     "acquired" NUMERIC,
--     PRIMARY KEY("id")
-- );
.print 'schema'
.schema
  
-- After each commit comment out the queries written and then continue to write your queries in this part of the file

-- changes back to stdout    
.output stdout  

-- bash command sqlite3 mfa.db < p1-q.sql