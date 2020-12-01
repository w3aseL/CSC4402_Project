INSERT INTO User (id, username, password, email)
VALUES
(1, "jgalle8", "password123", "jgalle8@lsu.edu"),
(2, "noaht", "p@ssword", "noaht@lsu.edu"),
(3, "miketiger", "geauxtigers", "tigermike@gmail.com"),
(4, "rbooker30", "abc123", "rachelb@hotmail.com"),
(5, "cj123", "passwordpassword", "chris.johnson@yahoo.com"),
(6, "jsmith1998", "password1998", "james_smith@lsu.edu"),
(7, "mjenk100", "mjenk#", "mariejenkins@gmail.com"),
(8, "bfavr", "packers4", "brettfavre4@packers.org"),
(9, "jharden", "rockets12", "jamesharden@rockets.org"),
(10, "chadd", "passwordPassword", "chaddaniels@yahoo.com");

INSERT INTO Contributor (id, name, profession)
VALUES
(1, "Luke Combs", "Singer"),
(2, "Steven Spielberg", "Director"),
(3, "Jeff Goldblum", "Actor"),
(4, "TI", "Singer"),
(5, "Drake", "Singer"),
(6, "Chris Brown", "Singer"),
(7, "Meek Mill", "Singer"),
(8, "Quentin Tarantino", "Director"),
(9, "John Travolta", "Actor"),
(10, "Samuel Jackson", "Actor");

INSERT INTO Product (id, name, description, media_type, genre, release_date, price)
VALUES
(1, "Forever After All", "The song, released on River House/Columbia Nashville, is just the sixth to have arrived at the summit since the chart began as an all-encompassing genre survey in 1958. It's the second this year, after Morgan Wallen's 7 Summers arrived atop the Aug. 29 list.", "Music", "Country", '2019-01-01', 1.30),
(2, "Jurassic Park", "In Steven Spielberg's massive blockbuster, paleontologists Alan Grant (Sam Neill) and Ellie Sattler (Laura Dern) and mathematician Ian Malcolm (Jeff Goldblum) are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA.", "Movie", "Science Fiction", '1993-06-11', 8.99),
(3, "The League", "Some friends who are all avid fantasy football fans try to balance their time between the league and their real lives.", "Show", "Comedy", '2009-10-29', 25.99),
(4, "Dead and Gone", "A song by American hip hop recording artist T.I., featuring American singer-songwriter Justin Timberlake. It was released as the eighth single from T.I.'s sixth studio album, Paper Trail (2008).", "Music", "Hip-Hop", '2008-10-10', 0.99),
(5, "God's Plan","A song recorded by Canadian rapper Drake, released on January 19, 2018, through Young Money and Cash Money. Co-written by Drake, Cardo, Yung Exclusive, Boi-1da, 40, and Brock Korsan, and produced by Cardo, Yung Exclusive, Boi-1da, and 40, the track acts as a single from his second EP, Scary Hours (2018), and the lead single from his fifth studio album, Scorpion (2018).", "Music", "Hip-Hop", '2018-02-01', 1.99),
(6, "No Guidance","A song by American singer Chris Brown featuring vocals from Canadian rapper Drake. It was released on June 8, 2019 as the fourth single from Brown's ninth studio album, Indigo (2019). The song was produced by American producers Vinylz, J-Louis, Teddy Walton, and Canadian producer 40. The track contains uncredited samples from Before I Die, written and performed by Che Ecru", "Music", "Hip-Hop", '2019-06-07', 1.30),
(7, "Going Bad", "A song by American rapper Meek Mill featuring Drake. It was released as the lead single from Meek Mill's album Championships (2018) on January 22, 2019 to US urban contemporary radio. The music video was teased in February 2019 and also released in the month. The single also became Meek Mill's first and Drake's 24th number one single on Billboard's Rhythmic Songs Chart in its March 30, 2019 issue.", "Music", "Hip-Hop", '2018-11-29', 1.30),
(8, "Pulp Fiction","Vincent Vega (John Travolta) and Jules Winnfield (Samuel L. Jackson) are hitmen with a penchant for philosophical discussions.", "Movie", "Action", '1994-10-14', 9.99),
(9, "Grease","Experience the friendships, romances and adventures of a group of high school kids in the 1950s. Welcome to the singing and dancing world of Grease, the most successful movie musical of all time.", "Movie", "Romance", '1978-06-01', 5.99),
(10, "Snakes on a Plane", "FBI agent Nelville Flynn (Samuel L. Jackson) boards a flight from Hawaii to Los Angeles, escorting a witness to trial. An on-board assassin releases a crate of deadly serpents in an attempt to kill the witness. Flynn and a host of frightened passengers and crew must band together to survive the slithery threat.", "Movie", "Action", '2006-08-18', 6.99);

INSERT INTO Invoice (id, user_id, total, purchase_date)
VALUES
(1, 1, 1.3*1.0825, '2020-12-01'),
(2, 1, 8.99*1.0825, '2020-10-31'),
(3, 2, 25.99*1.0825, '2020-01-15'),
(4, 3, 0.99*1.0825, '2018-07-24'),
(5, 3, 1.99*1.0825, '2019-12-21'),
(6, 3, 1.3*1.0825, '2020-12-01'),
(7, 3, 1.3*1.0825, '2020-11-01'),
(8, 3, 9.99*1.0825, '2017-01-30'),
(9, 4, 5.99*1.0825, '2020-04-04'),
(10, 5, 6.99*1.0825, '2019-05-11');

INSERT INTO Rating (contributor_id, user_id, rating)
VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 4),
(3, 2, 3),
(4, 3, 4),
(5, 3, 5),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 4),
(10, 3, 3),
(9, 4, 4),
(10, 5, 5);

INSERT INTO ProductContributor (product_id, contributor_id)
VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(6, 5),
(7, 7),
(7, 5),
(8, 8),
(8, 9),
(8, 10),
(9, 9),
(10, 10);

INSERT INTO InvoiceProduct (invoice_id, product_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO OwnedProduct (user_id, product_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 9),
(5, 10);