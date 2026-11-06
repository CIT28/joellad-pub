-- starting the pow workflow
.mode box
.output '| cat >> pow-p2.txt'
.print '<-------->'
-- .print 'Schema for single table version of mbta.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

-- .print 'Schema for multiple table version of mbta.db'

.print 'column constraints example'
.schema

-- CREATE TABLE "riders" (
--     "id" INTEGER,
--     "name" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );


--  CREATE TABLE "stations" (
--     "id" INTEGER, 
--     "name" TEXT NOT NULL UNIQUE,
--     "line" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );

-- CREATE TABLE "visits" (
--     "id" INTEGER,
--     "rider_id" INTEGER,
--     "station_id" INTEGER,
--     PRIMARY KEY("id")
--     FOREIGN KEY("rider_id") REFERENCES "riders"("id"),
--     FOREIGN KEY("station_id") REFERENCES "stations"("id")
-- );



-- CREATE TABLE "riders" (
--     "id" INTEGER,
--     "name" TEXT
-- );

-- CREATE TABLE "stations" (
--     "id" INTEGER,
--     "name" TEXT,
--     "line" TEXT
-- );

-- CREATE TABLE "visits" (
--     "rider_id" INTEGER,
--     "station_id" INTEGER
-- );


-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 mbta.db < p2-q.sql