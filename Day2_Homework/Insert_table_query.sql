INSERT INTO "customer"(
	customer_id,
	last_name,
	first_name,
	address,
	email,
	billing_info
)VALUES(
	1,
	'Patel',
	'Tarun',
	'123 Fake Street, Fakeston, IL 66666',
	'fakestemail@fake.com',
	'1234 5678 8910 1112 987 01/30'
);

INSERT INTO "inventory"(
	"item_name",
	"quantity"
)VALUES(
	'popcorn',
	500
), (  
	'Coca-Cola',
	1000
),(
	'Diet Coca-Cola',
	1000
),(
	'Sour Patch Kids',
	500
),(
	'Cups',
	2500
);

INSERT INTO "movies"(
	"movie_name",
	"time_id",
	"date_id",
	"runtime_id"
)VALUES(
	'Pulp Fiction',
	'7:00',
	'2022-12-12',
	154
), (
	'Django Unchained',
	'9:00',
	'2022-12-12',
	165
);

INSERT INTO "tickets"(
	"theater_id",
	"amount",
	"quantity",
	"customer_id",
	"movie_id"
)VALUES(
	1,
	14.99,
	1,
	1,
	5
), (
	2,
	29.98,
	2,
	1,
	6
);

INSERT INTO "concessions"(
	"amount",
	"quantity",
	"items_ordered",
	"order_total",
	"customer_id",
	"inventory_id"
)VALUES(
	6,
	1,
	1,
	6,
	1,
	16
)

SELECT *
FROM concessions

SELECT *
FROM customer

SELECT *
FROM inventory

SELECT *
FROM movies

SELECT *
FROM tickets