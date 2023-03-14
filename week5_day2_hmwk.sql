

CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY, -- PRIMARY KEY specifies BOTH UNIQUE AND NOT NULL 
	first_name VARCHAR(50) NOT NULL, -- NOT NULL means that this COLUMN cannot be EMPTY 
	last_name VARCHAR(50) NOT NULL,
	cust_age NUMERIC(2),
	email VARCHAR(50) NOT NULL,
	loyalty_member BOOLEAN DEFAULT FALSE
);

SELECT *
FROM customers;


CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	show_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	show_time TIMESTAMP(50) NOT NULL,
	quantity INTEGER(50) NOT NULL,
	price NUMERIC(4,2),
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
	
);

CREATE TABLE theaters(
	theater_code SERIAL PRIMARY KEY,
	theater_num VARCHAR(50),
	hallway VARCHAR(50),
	side VARCHAR(50),
	nearest_exit VARCHAR(50)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50),
	movie_genre VARCHAR(40),
	rating VARCHAR(20),
	star VARCHAR(100),
	co_stars VARCHAR(300),
	FOREIGN KEY(theater_code) REFERENCES theaters(theater_code) 
);

CREATE TABLE id(
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES "tickets"(ticket_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES "movies"(movie_id)
);

SELECT *
FROM wk5day2hmwk_movies.public.customers;
SELECT *
FROM wk5day2hmwk_movies.public.tickets;
SELECT *
FROM wk5day2hmwk_movies.public.movies ;
SELECT *
FROM wk5day2hmwk_movies.public.theaters;
SELECT *
FROM wk5day2hmwk_movies.public.id;

	

