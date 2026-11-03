-- starting the pow workflow
.mode box
.output '| cat >> pow-ds.txt'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)


-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 cyberchase.db < w4-q.sql