-- starting the pow workflow
.mode box
.output '| cat >> pow-p1.txt'
.print '<-------->'
-- .print 'Schema for single table version of longlist.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

-- .print 'Schema for multiple table version of longlist.db'
.schema

CREATE TABLE "riders" (
    "id",
    "name"
);

CREATE TABLE "stations" (
    "id",
    "name",
    "line"
);

CREATE TABLE "visits" (
    "rider_id",
    "station_id"
);



-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 mbta.db < p1-q.sql