CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE,
    password TEXT,
    role INTEGER
);

CREATE TABLE location_categories (
	id SERIAL PRIMARY KEY,
	category TEXT
);

CREATE TABLE material_categories (
	id SERIAL PRIMARY KEY,
	category TEXT
);

CREATE TABLE drop_categories (
	id SERIAL PRIMARY KEY,
	category TEXT
);

CREATE TABLE rides (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE,
    description TEXT,
    location_id INTEGER REFERENCES location_categories,
    material_id INTEGER REFERENCES material_categories,
    drop_id INTEGER REFERENCES drop_categories
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    content TEXT,
    stars INTEGER,
    sent_at TIMESTAMP,
    user_id INTEGER REFERENCES users,
    ride_id INTEGER REFERENCES rides ON DELETE CASCADE
);
