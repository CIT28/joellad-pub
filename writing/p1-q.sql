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
-- .print 'schema'
-- .schema

-- .print 'Profusion of flowers'
-- INSERT INTO "collections" ("id", "title", "accession_number", "acquired")
--     VALUES (1, 'Profusion of flowers', '56.257', '1956-04-12');

-- .print 'Farmers working at dawn'
-- INSERT INTO "collections" ("id", "title", "accession_number", "acquired")
--     VALUES (2, 'Farmers wrking at dawn', '11.6152', '1911-08-03');

-- .print 'Sprint outing'
-- INSERT INTO "collections" ("id", "title", "accession_number", "acquired")
--     VALUES (3, 'Spring outing', '14.76', '1914-01-08');


-- .print 'add rows'
-- SELECT * FROM "collections";

-- .print 'Sprint outing without id'
-- INSERT INTO "collections" ("title", "accession_number", "acquired")
--     VALUES ('Spring outing', '14.76', '1914-01-08');

-- .print 'duplicate accession_number'
-- INSERT INTO "collections" ("title", "accession_number", "acquired")
--     VALUES ('Spring outing', '14.76', '1914-01-08');

-- .print 'NULL title or accession_number'
-- INSERT INTO "collections" ("title", "accession_number", "acquired")
--     VALUES (NULL, NULL, '1900-01-10');

-- .print 'insert multiple rows'
-- -- INSERT INTO "collections" ("title", "accession_number", "acquired")
-- --     VALUES 
-- --     ('imaginative landscape', '56.496', NULL),
-- --     ('Peonies and butterfly', '06.1899', '1906-01-01');
-- SELECT * FROM "collections";

-- .print 'schema'
-- .schema

-- .print 'imported csv'
-- SELECT * FROM "collections";

-- .import --csv mfa.csv temp
-- .print 'temp table temp table without id'
-- SELECT * FROM "temp";
-- .print 'insert temp into collections'
-- -- INSERT INTO "collections" ("title", "accession_number", "acquired")
-- --     SELECT "title", "accession_number", "acquired" FROM "temp";
-- SELECT * FROM "collections";

-- .print 'drop temp'
-- DROP TABLE "temp";


-- After each commit comment out the queries written and then continue to write your queries in this part of the file

-- changes back to stdout    
.output stdout  

-- bash command sqlite3 mfa.db < p1-q.sql