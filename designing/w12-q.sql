-- starting the pow workflow
.mode box
.output '| cat >> pow-a.txt'
.print '<-------->'
-- .print 'Schema for single table version of longlist.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

.print 'Schema for multiple table version of longlist.db'
.schema

-- CREATE TABLE "students" (
--     "id",
--     "firstname",
--     "lastname"
-- );



-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 cit28.db < w12-q.sql