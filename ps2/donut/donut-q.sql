-- starting the pow workflow
.mode box
.output '| cat >> pow-d.txt'
.print '<-------->'
-- .print 'Schema for single table version of mbta.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

-- .print 'Schema for multiple table version of mbta.db'
.schema

-- CREATE TABLE "riders" (
--     "id",
--     "name"
-- );




-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 ?? < donut-q.sql