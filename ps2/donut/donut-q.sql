-- starting the pow workflow
.mode box
.output '| cat >> pow-d.txt'
.print '<-------->'
-- .print 'Schema for single table version of donut.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

.print "ingredients"
CREATE TABLE "ingredients" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
-- provides name for each ingredient
    "price_per_unit" INTEGER NOT NULL,
-- satisfys ingredient cost
    "unit_of_measure" TEXT NOT NULL,
-- specifys measure of ingredient
    "quantity_on_hand" REAL,
-- provides remaining quantity
    PRIMARY KEY("id")
);


-- DROP TABLE "ingredients";

.print 'donuts'
CREATE TABLE "donuts" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
-- ensures all donuts are listed
    "gluten-free" TEXT NOT NULL,
-- satisfys gluten identifier
    "price_per_donut" REAL NOT NULL,
-- ensures cost per donut
    "ingredients" TEXT NOT NULL,
-- ensures donut ingredients are listed
    "ingredients_id" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("ingredients_id") REFERENCES "ingredients"("id")
);

-- DROP TABLE "donuts";




-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 donut.db < donut-q.sql