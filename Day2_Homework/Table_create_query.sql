CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "last_name" VARCHAR(50),
  "first_name" VARCHAR(50),
  "address" VARCHAR(50),
  "email" VARCHAR(100),
  "billing_info" VARCHAR(200),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "movies" (
  "movie_id" SERIAL,
  "movie_name" VARCHAR(50),
  "time_id" TIME,
  "date_id" DATE,
  "runtime_id" NUMERIC,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "inventory" (
  "inventory_id" SERIAL,
  "item_name" VARCHAR(50),
  "quantity" INTEGER,
  PRIMARY KEY ("inventory_id")
);

CREATE TABLE "tickets" (
  "ticket_id" SERIAL,
  "theater_id" INTEGER,
  "amount" NUMERIC(8,2),
  "quantity" INTEGER,
  "customer_id" INTEGER NOT NULL,
  "movie_id" INTEGER NOT NULL,
  PRIMARY KEY ("ticket_id"),
	FOREIGN KEY("customer_id") REFERENCES "customer"(customer_id),
	FOREIGN KEY("movie_id") REFERENCES "movies"(movie_id)
);

CREATE TABLE "concessions" (
  "concession_id" SERIAL,
  "amount" NUMERIC(8,2),
  "quantity" INTEGER,
  "items_ordered" INTEGER,
  "order_total" NUMERIC(8,2),
  "customer_id" INTEGER,
  "inventory_id" INTEGER,
  PRIMARY KEY ("concession_id"),
	FOREIGN KEY("customer_id") REFERENCES "customer"(customer_id),
	FOREIGN KEY("inventory_id") REFERENCES "inventory"(inventory_id)
);