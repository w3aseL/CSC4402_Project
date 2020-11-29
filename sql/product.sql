CREATE TABLE Product (
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    genre_id INT NOT NULL,
    release_date DATE NOT NULL,
    price DECIMAL(12, 2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (genre_id) REFERENCES Genre(id)
);