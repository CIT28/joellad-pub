-- starting the pow workflow
.mode box
.output '| cat >> pow-d.txt'
.print '<-------->'
-- .print 'Schema for single table version of donut.db'

-- ⬇️ WRITE YOUR QUERIES BELOW THIS LINE ⬇️
-- (Remember to .print 'description' before each query)

-- .print "ingredients"
-- CREATE TABLE "ingredients" (
--     "id" INTEGER NOT NULL,
--     "name" TEXT NOT NULL,
-- -- provides name for each ingredient
--     "price_per_unit" INTEGER NOT NULL,
-- -- satisfys ingredient cost
--     "unit_of_measure" TEXT NOT NULL,
-- -- specifys measure of ingredient
--     "quantity_on_hand" REAL,
-- -- provides remaining quantity
--     PRIMARY KEY("id")
-- );


-- DROP TABLE "ingredients";

-- .print 'donuts'
-- CREATE TABLE "donuts" (
--     "id" INTEGER NOT NULL,
--     "name" TEXT NOT NULL,
-- -- ensures all donuts are listed
--     "gluten-free" TEXT NOT NULL,
-- -- satisfys gluten identifier
--     "price_per_donut" REAL NOT NULL,
-- -- ensures cost per donut
--     "ingredients" TEXT NOT NULL,
-- -- ensures donut ingredients are listed
--     "ingredients_id" TEXT NOT NULL,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("ingredients_id") REFERENCES "ingredients"("id")
-- );

-- DROP TABLE "donuts";

-- .print 'orders'
-- CREATE TABLE "orders" (
--     "id" INTEGER,
-- -- provides order number
--     "cutomer" TEXT NOT NULL,
-- -- ensures cutomer name
--     "donut_id" INTEGER NOT NULL,
-- -- lists donuts in order
--     PRIMARY KEY("id"),
--     FOREIGN KEY ("donut_id") REFERENCES "donut"("id")
-- );


.print 'customers'
CREATE TABLE "customers" (
    "id" TEXT,
    "first_name" TEXT NOT NULL,
-- ensures customer first name provided
    "last_name" TEXT NOT NULL,
-- ensures customer last name provided
    "phone_number" INTEGER NOT NULL,
--- provides a unique link of customer order
    "orders_id" INTEGER NOT NULL,
-- links customers to order history
    PRIMARY KEY("id"),
    FOREIGN KEY ("orders_id") REFERENCES "orders"("id")
);


-- ⬆️ END OF QUERIES ⬆️

-- changes back to stdout
.output stdout

-- bash command (for reference): sqlite3 donut.db < donut-q.sql