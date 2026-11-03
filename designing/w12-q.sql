-- starting the pow workflow
.mode box
.output '| cat >> pow-a.txt'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)
.print 'Schema for single table version of longlist.db'


-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 ??.db < w12-q.sql