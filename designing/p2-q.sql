-- starting the pow workflow
.mode box
.output '| cat >> pow-p2.txt'
.print '<-------->'
-- .print 'Schema for single table version of mbta.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

-- .print 'Schema for multiple table version of mbta.db'

.print 'updating schema'
.schema

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

-- ALTER TABLE "visits" RENAME TO "swipes";
-- ALTER TABLE "swipes" ADD COLUMN "type" TEXT;
-- ALTER TABLE "swipes" RENAME COLUMN "type" TO "type";
-- ALTER TABLE "swipes" DROP COLUMN "type";

-- CREATE TABLE "card" (
--     "id" INTEGER,
--     PRIMARY KEY("id")
-- );


--  CREATE TABLE "stations" (
--     "id" INTEGER, 
--     "name" TEXT NOT NULL UNIQUE,
--     "line" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );

-- CREATE TABLE "swipes" (
--     "id" INTEGER,
--     "card_id" INTEGER,
--     "station_id" INTEGER,
--     "type" TEXT NOT NULL CHECK("type" IN ('enter', 'exit', 'deposit')),
--     "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     "amount" NUMERIC NOT NULL CHECK ("amount" !=0),
--     PRIMARY KEY("id"),
--     FOREIGN KEY("card_id") REFERENCES "card"("id"),
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