-- starting the pow workflow
.mode box
.output '| cat >> pow-p2d.txt'
.print '<-------->'
-- .print 'Schema for single table version of mbta.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

-- .print 'Schema for multiple table version of mbta.db'
.schema


-- DROP TABLE "riders";

-- DROP TABLE "stations";

-- DROP TABLE "visits";



-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 mbta.db < p2-d.sql