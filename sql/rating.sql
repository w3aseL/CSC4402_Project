CREATE TABLE Rating (
    id INTEGER NOT NULL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    rating TINYINT NOT NULL,
    PRIMARY KEY (contributor_id, user_id),
    FOREIGN KEY (contributor_id) REFERENCES Contributor(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE CASCADE
);