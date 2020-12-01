CREATE TABLE Product (
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    media_type varchar(255) NOT NULL,
    genre varchar(255) NOT NULL,
    release_date DATE NOT NULL,
    price DECIMAL(12, 2) NOT NULL,
    PRIMARY KEY (id)
);