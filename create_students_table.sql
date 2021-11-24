CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    join_date DATE,
    name VARCHAR(50),
    nickname VARCHAR(50),
    city VARCHAR(50),
    dOB DATE,
    hobby VARCHAR(50),
    email VARCHAR(50)
);