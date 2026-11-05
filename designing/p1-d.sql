-- starting the pow workflow
.mode box
.output '| cat >> pow-p1d.txt'
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

-- CREATE TABLE "stations" (
--     "id",
--     "name",
--     "line"
-- );

-- CREATE TABLE "visits" (
--     "rider_id",
--     "station_id"
-- );

-- DROP TABLE "riders";

-- DROP TABLE "stations";

-- DROP TABLE "visits";


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


-- CREATE TABLE "riders" (
--     "id" INTEGER,
--     "name" TEXT,
--     PRIMARY KEY("id")
-- );

-- CREATE TABLE "stations" (
--     "id" INTEGER, 
--     "name" TEXT,
--     "line" TEXT,
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


-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 mbta.db < p1-d.sql