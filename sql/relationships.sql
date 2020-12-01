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