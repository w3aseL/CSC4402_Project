CREATE TABLE User (
    id INTEGER NOT NULL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE Contributor (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL
);

CREATE TABLE Product (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    media_type varchar(255) NOT NULL,
    genre varchar(255) NOT NULL,
    release_date DATE NOT NULL,
    price DECIMAL(12, 2) NOT NULL
);

CREATE TABLE Invoice (
    id INTEGER NOT NULL PRIMARY KEY,
    user_id INTEGER,
    total DECIMAL(12, 2) NOT NULL,
    purchase_date DATETIME NOT NULL
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE SET NULL
);

CREATE TABLE Rating (
    contributor_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    rating TINYINT NOT NULL,
    PRIMARY KEY (contributor_id, user_id),
    FOREIGN KEY (contributor_id) REFERENCES Contributor(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE CASCADE
);

CREATE TABLE ProductContributor (
    product_id INTEGER NOT NULL,
    contributor_id INTEGER NOT NULL,
    PRIMARY KEY (product_id, contributor_id),
    FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE,
    FOREIGN KEY (contributor_id) REFERENCES Contributor(id) ON DELETE CASCADE
);

CREATE TABLE InvoiceProduct (
    invoice_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    PRIMARY KEY (invoice_id, product_id),
    FOREIGN KEY (invoice_id) REFERENCES Invoice(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE
);

CREATE TABLE OwnedProduct (
    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    PRIMARY KEY (user_id, product_id),
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE
);