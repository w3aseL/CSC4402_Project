CREATE TABLE User (
    id INT NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Genre (
    id INT NOT NULL,
    media_type VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Contributor (
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

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

CREATE TABLE Invoice (
    id INT NOT NULL,
    user_id INT,
    total DECIMAL(12, 2) NOT NULL,
    purchase_date DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE SET NULL
);

CREATE TABLE Rating (
    contributor_id INT NOT NULL,
    user_id INT NOT NULL,
    rating TINYINT NOT NULL,
    PRIMARY KEY (contributor_id, user_id),
    FOREIGN KEY (contributor_id) REFERENCES Contributor(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE CASCADE
);

CREATE TABLE ProductContributor (
    product_id INT NOT NULL,
    contributor_id INT NOT NULL,
    PRIMARY KEY (product_id, contributor_id),
    FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE,
    FOREIGN KEY (contributor_id) REFERENCES Contributor(id) ON DELETE CASCADE
);

CREATE TABLE InvoiceProduct (
    invoice_id INT NOT NULL,
    product_id INT NOT NULL,
    PRIMARY KEY (invoice_id, product_id),
    FOREIGN KEY (invoice_id) REFERENCES Invoice(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE
);

CREATE TABLE OwnedProduct (
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    PRIMARY KEY (user_id, product_id),
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE
);