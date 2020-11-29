CREATE TABLE Invoice (
    id INT NOT NULL,
    user_id INT,
    total DECIMAL(12, 2) NOT NULL,
    purchase_date DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE SET NULL
);