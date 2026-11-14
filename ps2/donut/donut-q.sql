-- starting the pow workflow
.mode box
.output '| cat >> pow-d.txt'
.print '<-------->'
-- .print 'Schema for single table version of donut.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

.schema





-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 donut.db < donut-q.sql