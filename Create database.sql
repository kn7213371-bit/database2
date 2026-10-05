CREATE TABLE IF NOT EXISTS authors (
id SERIAL PRIMARY KEY,
name varchar(255) NOT null,
country varchar(255)
);

CREATE TABLE IF NOT EXISTS books(
id SERIAL PRIMARY KEY,
title varchar(255) NOT null,
price DECIMAL(10, 2) NOT null,
author_id INT NOT NULL REFERENCES authors(id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS customers(
id SERIAL PRIMARY KEY,
name varchar(255) NOT null
);

CREATE TABLE IF NOT EXISTS orders(
id SERIAL PRIMARY KEY,
ordered_at timestamp DEFAULT CURRENT_TIMESTAMP,
customer_id INT NOT NULL REFERENCES customers(id) ON DELETE CASCADE

);

CREATE TABLE IF NOT EXISTS order_item(
quantity INT DEFAULT 1,
cost DECIMAL(10, 2) NOT null,
order_id INT REFERENCES orders(id) ON DELETE SET NULL,
book_id INT REFERENCES books(id) ON DELETE SET NULL,
PRIMARY KEY (order_id, book_id)
);